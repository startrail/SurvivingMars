-- ========== THIS IS AN AUTOMATICALLY GENERATED FILE! ==========

PlaceObj('XTemplate', {
	group = "Infopanel Sections",
	id = "sectionConstructionSite",
	PlaceObj('XTemplateGroup', {
		'__context_of_kind', "ConstructionSite",
	}, {
		PlaceObj('XTemplateTemplate', {
			'__template', "InfopanelSection",
			'RolloverText', T{626, --[[XTemplate sectionConstructionSite RolloverText]] "All resources have to be delivered to the site. Construction is performed by Drones."},
			'Title', T{394, --[[XTemplate sectionConstructionSite Title]] "Construction progress"},
			'Icon', "UI/Icons/Sections/construction.tga",
		}, {
			PlaceObj('XTemplateTemplate', {
				'__template', "InfopanelText",
				'Text', T{796206581420, --[[XTemplate sectionConstructionSite Text]] "<IPStatus>"},
			}),
			PlaceObj('XTemplateWindow', {
				'__class', "XFrameProgress",
				'Id', "idProgress",
				'Margins', box(10, 15, 10, 14),
				'FoldWhenHidden', true,
				'Image', "UI/Infopanel/progress_bar.tga",
				'FrameBox', box(5, 0, 5, 0),
				'OnContextUpdate', function (self, context, ...)
XFrameProgress.OnContextUpdate(self, context, ...)
local show = context:IsBlockerClearenceCompleteUIOnly() and not context:IsWaitingResources()
self:SetVisible(show)
end,
				'BindTo', "ConstructionBuildPointsProgress",
				'MinProgressSize', 8,
				'ProgressImage', "UI/Infopanel/progress_bar_green.tga",
				'ProgressFrameBox', box(4, 0, 4, 0),
			}),
			}),
		PlaceObj('XTemplateAction', {
			'ActionId', "Quick build",
			'ActionToolbar', "cheats",
			'OnAction', function (self, host, source, toggled)
local obj = host.context
if obj.construction_group then 
	obj.construction_group[1]:Complete(true)
else
	obj:Complete(true)
end
end,
		}),
		}),
})

