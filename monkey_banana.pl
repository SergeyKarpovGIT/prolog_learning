% LEGAL MOVES:
% The only possible position to grasp the banana:
move(
  state(middle, onbox, middle, hasnot),
  grasp,
  state(middle, onbox, middle, has)
).

% Climb a box:
move(
  state(P, onfloor, P, H),
  climb,
  state(P, onbox, P, H)
).

% Push a box from P1 to P2:
move(
  state(P1, onfloor, P1, H),
  push(P1, P2),
  state(P2, onfloor, P2, H)
).

% Walk from P1 to P2:
move(
  state(P1, onfloor, B, H),
  walk(P1, P2),
  state(P2, onfloor, B, H)
).

% canget(State): the monkey can get the banana in State:
canget(state(_, _, _, has)).        % can1: the monkey already has the banana
canget(State1) :-                   % can2: do some work to get the banana
  move(State1, Move, State2),     % do something
  canget(State2).                 % get the banana now
