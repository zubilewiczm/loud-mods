config = {
	{   default = 1,
        label = "<LOC TanksysFixesArc_LOB>Tanksys Fixes: Firing arc settings",
        help = "<LOC TanksysFixesArc_LOB_D>Adjust firing arcs of most indirect fire weapons",
        key = 'TanksysFixesArc',
        values = {
            {
                text = "<LOC TanksysFixesArc_LOB_Low>Keep low",
                help = "<LOC TanksysFixesArc_LOB_LowD>Do not change firing arcs.",
                key = 'Low',
            },
            {
                text = "<LOC TanksysFixesArc_LOB_High>Raise to high",
                help = "<LOC TanksysFixesArc_LOB_HighD>Make weapons fire at high arc instead of low.",
                key = 'High',
            },
        },
    },
}