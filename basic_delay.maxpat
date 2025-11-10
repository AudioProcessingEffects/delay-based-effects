{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 59.0, 106.0, 545.0, 659.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 415.0, 47.0, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "bubblesize": 20,
                    "id": "obj-24",
                    "maxclass": "preset",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "preset", "int", "preset", "int", "" ],
                    "patching_rect": [ 415.0, 79.0, 53.0, 30.0 ],
                    "preset_data": [
                        {
                            "number": 1,
                            "data": [ 5, "obj-4", "playlist~", "preset_count", 1, 7, "obj-4", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-4", "playlist~", "preset_clipstate", 1, "absolutepath", "eroica.aiff", 7, "obj-4", "playlist~", "preset_clipstate", 1, "filename", "eroica.aiff", 7, "obj-4", "playlist~", "preset_clipstate", 1, "loop", 0, 8, "obj-4", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-4", "playlist~", "preset_clipstate", 1, "id", "u991001207", 4, "obj-4", "playlist~", "preset_execute", 6, "obj-5", "gain~", "list", 121, 10.0, 5, "obj-12", "number", "float", 0.699999988079071, 5, "obj-16", "number", "float", 175.0, 5, "obj-20", "number", "float", 0.649999976158142 ]
                        },
                        {
                            "number": 2,
                            "data": [ 5, "obj-4", "playlist~", "preset_count", 1, 7, "obj-4", "playlist~", "preset_clipstate", 1, "filekind", "audiofile", 7, "obj-4", "playlist~", "preset_clipstate", 1, "absolutepath", "eroica.aiff", 7, "obj-4", "playlist~", "preset_clipstate", 1, "filename", "eroica.aiff", 7, "obj-4", "playlist~", "preset_clipstate", 1, "loop", 0, 8, "obj-4", "playlist~", "preset_clipstate", 1, "selection", -1.0, -1.0, 7, "obj-4", "playlist~", "preset_clipstate", 1, "id", "u991001207", 4, "obj-4", "playlist~", "preset_execute", 6, "obj-5", "gain~", "list", 121, 10.0, 5, "obj-12", "number", "float", 0.5, 5, "obj-16", "number", "float", 500.0, 5, "obj-20", "number", "float", 0.5 ]
                        }
                    ]
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.5019607843137255, 0.5019607843137255, 0.5019607843137255, 0.43 ],
                    "id": "obj-23",
                    "linecount": 17,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 176.0, 381.0, 292.0, 241.0 ],
                    "text": "Basic Delay:\n\nThe tapin~ object holds a ring buffer of the input signal as defined by the maximum delay time (in this case 1000 ms). \n\nThe is then passed to the tapout~ object which is added to the direct (\"dry') signal (via a *~ object to act as a level control for the delay). \n\nWe can also introduce a feedback loop by taking the output of tapout~ and passing it back into the tapin~ object. \n\nIMPORTANT: The feedback and FX amount values  need to be scaled between 0. and 1. otherwise you overload the output. ",
                    "textcolor": [ 1.0, 1.0, 1.0, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 285.0, 223.0, 183.0, 20.0 ],
                    "text": "Feedback (maximum value of 1!)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-20",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 223.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 176.0, 265.0, 40.0, 22.0 ],
                    "text": "*~ 0.5"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 285.0, 150.0, 93.0, 20.0 ],
                    "text": "Delay time (ms)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-16",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 150.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 285.0, 297.0, 189.0, 20.0 ],
                    "text": "FX amount (maximum value of 1!)"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-12",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 229.0, 297.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 53.0, 381.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 128.0, 337.0, 34.0, 22.0 ],
                    "text": "*~ 1."
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 128.0, 223.0, 49.0, 22.0 ],
                    "text": "tapout~"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "tapconnect" ],
                    "patching_rect": [ 128.0, 150.0, 75.0, 22.0 ],
                    "text": "tapin~ 1000."
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 53.0, 576.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "gain~",
                    "multichannelvariant": 0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 53.0, 414.0, 22.0, 140.0 ]
                }
            },
            {
                "box": {
                    "data": {
                        "clips": [
                            {
                                "absolutepath": "eroica.aiff",
                                "filename": "eroica.aiff",
                                "filekind": "audiofile",
                                "id": "u991001207",
                                "selection": [ -1.0, -1.0 ],
                                "loop": 0,
                                "content_state": {                                }
                            }
                        ]
                    },
                    "id": "obj-4",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "signal", "", "dictionary" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 53.0, 79.0, 150.0, 30.0 ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 18.0,
                    "id": "obj-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 53.0, 28.0, 110.0, 27.0 ],
                    "text": "Basic Delay",
                    "textjustification": 1
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 1 ],
                    "midpoints": [ 238.5, 327.5, 152.5, 327.5 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 238.5, 197.0, 137.5, 197.0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 1 ],
                    "midpoints": [ 238.5, 254.5, 206.5, 254.5 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 185.5, 294.0, 114.0, 294.0, 114.0, 144.0, 137.5, 144.0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 62.5, 129.0, 137.5, 129.0 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "midpoints": [ 137.5, 257.0, 185.5, 257.0 ],
                    "order": 0,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 1,
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "midpoints": [ 137.5, 367.5, 73.0, 367.5 ],
                    "source": [ "obj-9", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}