
println("Dp) Test of the ImpactExcitationAutoion module with ASF from an internally generated initial-, intermediate and final-state multiplets.")
#
wa = Atomic.Computation("xx",  Nuclear.Model(26.), 
                        initialConfigs=[Configuration("1s^2 2s"), Configuration("1s^2 2p")],
                        intermediateConfigs=[Configuration("1s 2s^2 2p"), Configuration("1s 2s 2p^2") ],
                        finalConfigs  =[Configuration("1s^2 2s^2"), Configuration("1s^2 2s 2p") ], 
                        process = JAC.ImpactExcAuto, 
                        processSettings=ImpactExcitationAutoion.Settings()  )

wb = perform(wa)

