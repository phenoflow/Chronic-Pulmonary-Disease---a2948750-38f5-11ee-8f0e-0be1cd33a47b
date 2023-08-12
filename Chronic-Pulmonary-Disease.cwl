cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  chronic-pulmonary-disease-tracheobronchitis---primary:
    run: chronic-pulmonary-disease-tracheobronchitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  chronic-pulmonary-disease-antiasthmatics---primary:
    run: chronic-pulmonary-disease-antiasthmatics---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-tracheobronchitis---primary/output
  chronic-pulmonary-disease---primary:
    run: chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-antiasthmatics---primary/output
  chronic-pulmonary-disease-congestion---primary:
    run: chronic-pulmonary-disease-congestion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-theophylline---primary:
    run: chronic-pulmonary-disease-theophylline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-congestion---primary/output
  chronic-pulmonary-disease-bronchiectasis---primary:
    run: chronic-pulmonary-disease-bronchiectasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-theophylline---primary/output
  chronic-pulmonary-disease-specified---primary:
    run: chronic-pulmonary-disease-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-bronchiectasis---primary/output
  purulent-chronic-pulmonary-disease---primary:
    run: purulent-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-specified---primary/output
  chronic-pulmonary-disease-obstruction---primary:
    run: chronic-pulmonary-disease-obstruction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: purulent-chronic-pulmonary-disease---primary/output
  mixed-chronic-pulmonary-disease---primary:
    run: mixed-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-obstruction---primary/output
  chronic-pulmonary-disease-emphysema---primary:
    run: chronic-pulmonary-disease-emphysema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: mixed-chronic-pulmonary-disease---primary/output
  bullous-chronic-pulmonary-disease---primary:
    run: bullous-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-emphysema---primary/output
  chronic-pulmonary-disease-stenosis---primary:
    run: chronic-pulmonary-disease-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: bullous-chronic-pulmonary-disease---primary/output
  recurrent-chronic-pulmonary-disease---primary:
    run: recurrent-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-stenosis---primary/output
  extrinsic-chronic-pulmonary-disease---primary:
    run: extrinsic-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: recurrent-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-hypersensitivity---primary:
    run: chronic-pulmonary-disease-hypersensitivity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: extrinsic-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-bagassosis---primary:
    run: chronic-pulmonary-disease-bagassosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-hypersensitivity---primary/output
  birdfancier-chronic-pulmonary-disease---primary:
    run: birdfancier-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-bagassosis---primary/output
  chronic-pulmonary-disease-suberosis---primary:
    run: chronic-pulmonary-disease-suberosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: birdfancier-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-worker---primary:
    run: chronic-pulmonary-disease-worker---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-suberosis---primary/output
  chronic-pulmonary-disease-pneumonitis---primary:
    run: chronic-pulmonary-disease-pneumonitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-worker---primary/output
  chronic-pulmonary-disease-alveolitis---primary:
    run: chronic-pulmonary-disease-alveolitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-pneumonitis---primary/output
  chronic-pulmonary-disease-sequoiosis---primary:
    run: chronic-pulmonary-disease-sequoiosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-alveolitis---primary/output
  chronic-pulmonary-disease-condition---primary:
    run: chronic-pulmonary-disease-condition---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-sequoiosis---primary/output
  chronic-pulmonary-disease-agent---primary:
    run: chronic-pulmonary-disease-agent---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-condition---primary/output
  chronic-pulmonary-disease-pneumoconiosis---primary:
    run: chronic-pulmonary-disease-pneumoconiosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-agent---primary/output
  occupational-chronic-pulmonary-disease---primary:
    run: occupational-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-pneumoconiosis---primary/output
  chronic-pulmonary-disease-asbestosis---primary:
    run: chronic-pulmonary-disease-asbestosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: occupational-chronic-pulmonary-disease---primary/output
  plaque-chronic-pulmonary-disease---primary:
    run: plaque-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-asbestosis---primary/output
  chronic-pulmonary-disease-silica---primary:
    run: chronic-pulmonary-disease-silica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: plaque-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-silicosis---primary:
    run: chronic-pulmonary-disease-silicosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-silica---primary/output
  massive-chronic-pulmonary-disease---primary:
    run: massive-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-silicosis---primary/output
  inorganic-chronic-pulmonary-disease---primary:
    run: inorganic-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: massive-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-fibrosing---primary:
    run: chronic-pulmonary-disease-fibrosing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: inorganic-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-berylliosis---primary:
    run: chronic-pulmonary-disease-berylliosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-fibrosing---primary/output
  chronic-pulmonary-disease-siderosis---primary:
    run: chronic-pulmonary-disease-siderosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-berylliosis---primary/output
  chronic-pulmonary-disease-stannosis---primary:
    run: chronic-pulmonary-disease-stannosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-siderosis---primary/output
  pneumopathy-chronic-pulmonary-disease---primary:
    run: pneumopathy-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-stannosis---primary/output
  chronic-pulmonary-disease-byssinosis---primary:
    run: chronic-pulmonary-disease-byssinosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: pneumopathy-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-cannabinosis---primary:
    run: chronic-pulmonary-disease-cannabinosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-byssinosis---primary/output
  chronic-pulmonary-disease-associated---primary:
    run: chronic-pulmonary-disease-associated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-cannabinosis---primary/output
  chemical-chronic-pulmonary-disease---primary:
    run: chemical-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-associated---primary/output
  chronic-pulmonary-disease-bronchiolitis---primary:
    run: chronic-pulmonary-disease-bronchiolitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: chemical-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-oedema---primary:
    run: chronic-pulmonary-disease-oedema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-bronchiolitis---primary/output
  chronic-pulmonary-disease-inhalation---primary:
    run: chronic-pulmonary-disease-inhalation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-oedema---primary/output
  chronic-pulmonary-disease-radiation---primary:
    run: chronic-pulmonary-disease-radiation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-inhalation---primary/output
  chronic-pulmonary-disease-following---primary:
    run: chronic-pulmonary-disease-following---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-radiation---primary/output
  chronic-pulmonary-disease-druginduced---primary:
    run: chronic-pulmonary-disease-druginduced---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-following---primary/output
  chronic-pulmonary-disease-causing---primary:
    run: chronic-pulmonary-disease-causing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-druginduced---primary/output
  systemic-chronic-pulmonary-disease---primary:
    run: systemic-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-causing---primary/output
  chronic-pulmonary-disease-empyema---primary:
    run: chronic-pulmonary-disease-empyema---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: systemic-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-fistula---primary:
    run: chronic-pulmonary-disease-fistula---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-empyema---primary/output
  pleural-chronic-pulmonary-disease---primary:
    run: pleural-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-fistula---primary/output
  chronic-pulmonary-disease-pneumothorax---primary:
    run: chronic-pulmonary-disease-pneumothorax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: pleural-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-pyothorax---primary:
    run: chronic-pulmonary-disease-pyothorax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-pneumothorax---primary/output
  chronic-pulmonary-disease-mediastinum---primary:
    run: chronic-pulmonary-disease-mediastinum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-pyothorax---primary/output
  chronic-pulmonary-disease-abscess---primary:
    run: chronic-pulmonary-disease-abscess---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-mediastinum---primary/output
  chronic-pulmonary-disease-pneumonia---primary:
    run: chronic-pulmonary-disease-pneumonia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-abscess---primary/output
  chronic-pulmonary-disease-hypostasis---primary:
    run: chronic-pulmonary-disease-hypostasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-pneumonia---primary/output
  hypostatic-chronic-pulmonary-disease---primary:
    run: hypostatic-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-hypostasis---primary/output
  parietoalveolar-chronic-pulmonary-disease---primary:
    run: parietoalveolar-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: hypostatic-chronic-pulmonary-disease---primary/output
  idiopathic-chronic-pulmonary-disease---primary:
    run: idiopathic-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: parietoalveolar-chronic-pulmonary-disease---primary/output
  cryptogenic-chronic-pulmonary-disease---primary:
    run: cryptogenic-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: idiopathic-chronic-pulmonary-disease---primary/output
  interstitial-chronic-pulmonary-disease---primary:
    run: interstitial-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: cryptogenic-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-organising---primary:
    run: chronic-pulmonary-disease-organising---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: interstitial-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-lung---primary:
    run: chronic-pulmonary-disease-lung---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-organising---primary/output
  other-chronic-pulmonary-disease---primary:
    run: other-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-lung---primary/output
  chronic-pulmonary-disease-eosinophilia---primary:
    run: chronic-pulmonary-disease-eosinophilia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: other-chronic-pulmonary-disease---primary/output
  chronic-pulmonary-disease-loeffler's---primary:
    run: chronic-pulmonary-disease-loeffler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-eosinophilia---primary/output
  chronic-pulmonary-disease-broncholithiasis---primary:
    run: chronic-pulmonary-disease-broncholithiasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-loeffler's---primary/output
  chronic-pulmonary-disease-calcification---primary:
    run: chronic-pulmonary-disease-calcification---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-broncholithiasis---primary/output
  chronic-pulmonary-disease-pulmolithiasis---primary:
    run: chronic-pulmonary-disease-pulmolithiasis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-calcification---primary/output
  chronic-pulmonary-disease-failure---primary:
    run: chronic-pulmonary-disease-failure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-pulmolithiasis---primary/output
  chronic-pulmonary-disease-apnoea---primary:
    run: chronic-pulmonary-disease-apnoea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-failure---primary/output
  chronic-pulmonary-disease-complication---primary:
    run: chronic-pulmonary-disease-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-apnoea---primary/output
  chronic-pulmonary-disease-tracheostomy---primary:
    run: chronic-pulmonary-disease-tracheostomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-complication---primary/output
  chronic-pulmonary-disease-bronchu---primary:
    run: chronic-pulmonary-disease-bronchu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-tracheostomy---primary/output
  chronic-pulmonary-disease-trachea---primary:
    run: chronic-pulmonary-disease-trachea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-bronchu---primary/output
  chronic-pulmonary-disease-ulcer---primary:
    run: chronic-pulmonary-disease-ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-trachea---primary/output
  chronic-pulmonary-disease-bronchospasm---primary:
    run: chronic-pulmonary-disease-bronchospasm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-ulcer---primary/output
  subcutaneous-chronic-pulmonary-disease---primary:
    run: subcutaneous-chronic-pulmonary-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: chronic-pulmonary-disease-bronchospasm---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: subcutaneous-chronic-pulmonary-disease---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
