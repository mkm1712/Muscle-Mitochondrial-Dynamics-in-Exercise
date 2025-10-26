function args = runprogram(model, cs, variantsStruct, dosesStruct)

% Initialize arguments.
args.input.model    = model;
args.input.cs       = cs;
args.input.variants = variantsStruct;
args.input.doses    = dosesStruct;

% Run simulation.
args = runSimulation(args);

end

% -------------------------------------------------------------------------
function args = runSimulation(args)

% Extract the input arguments.
input    = args.input;
model    = input.model;
cs       = input.cs;
variants = input.variants.modelStep;
doses    = input.doses.modelStep;

% Simulate the model
data = sbiosimulate(model, cs, variants, doses);

% Populate the output structure.
args.output.results = data;

end


