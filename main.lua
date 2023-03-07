lib.registerContext({
    id = 'rockstar_editor',
    title = 'Rockstar Editor',
    onExit = function()
        print('gmtotu#9322')
    end,
    options = {
        {
            title = 'Start Recording',
            description = 'Starts The Recording.',
            onSelect = function(args)
				StartRecording(1)
            end
        },
		{
            title = 'Stop Recording',
            description = 'Stops The Recording.',
            onSelect = function(args)
				StopRecordingAndSaveClip()
            end
        },
		{
            title = 'Discard Recording',
            description = 'Discards The Recording.',
            onSelect = function(args)
				StopRecordingAndDiscardClip()
            end
        },
		{
            title = 'Open Rockstar Editor',
            description = 'Opens Rockstar Editor.',
            onSelect = function(args)
				NetworkSessionLeaveSinglePlayer()
				ActivateRockstarEditor()
            end
        }
    }
})

RegisterCommand('rockstareditor', function()
    lib.showContext('rockstar_editor')
end)