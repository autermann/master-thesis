function [results, resultsWtr, StFig, uStFig, LnFig, WFig, wTempFig, wndSpdFig, ...
          metaTFig, metaBFig, thermDFig, SthermDFig, SmetaBFig, SmetaTFig,      ...
          SuStFig, SLnFig, SWFig, N2Fig, SN2Fig, T1Fig, ST1Fig ]                ...
          = Run_LA_WPS(bthFileName, lvlFileName, wndFileName, wtrFileName,      ...
                       salFileName, outputResolution, totalDepth, windHeight,   ...
                       windAveraging, layerAveraging, outlierWindow,            ...
                       maxWaterTemp, minWaterTemp, maxWindSpeed, minWindSpeed,  ...
                       metaMinSlope, mixedTempDifferential, figRes, figUnits,   ...
                       figWidth, figHeight, leftMargin, rightMargin, topMargin, ...
                       botMargin, fontName, fontSize, heatMapMin, heatMapMax)

  outPuts = {    ...
      'St',      ...
      'uSt',     ...
      'Ln',      ...
      'W',       ...
      'wTemp',   ...
      'wndSpd',  ...
      'metaT',   ...
      'metaB',   ...
      'thermD',  ...
      'SthermD', ...
      'SmetaB',  ...
      'SmetaT',  ...
      'SuSt',    ...
      'SLn',     ...
      'SW',      ...
      'N2',      ...
      'SN2',     ...
      'T1',      ...
      'ST1'      ...
  };

  pltMods = struct(                        ...
      'figUnits',    figUnits,             ...
      'figWidth',    num2str(figWidth),    ...
      'figHeight',   num2str(figHeight),   ...
      'leftMargin',  num2str(leftMargin),  ...
      'rightMargin', num2str(rightMargin), ...
      'topMargin',   num2str(topMargin),   ...
      'botMargin',   num2str(botMargin),   ...
      'figType',     'png',                ...
      'figRes',      num2str(figRes),      ...
      'fontName',    fontName,             ...
      'fontSize',    num2str(fontSize),    ...
      'heatMapMin',  num2str(heatMapMin),  ...
      'heatMapMax',  num2str(heatMapMax)   ...
  );

  inFileNames = struct(           ...
      'bthFileName', bthFileName, ...
      'lvlFileName', lvlFileName, ...
      'wndFileName', wndFileName, ...
      'wtrFileName', wtrFileName  ...
  );

% null inputs are encoded as NaN
if ~isnan(salFileName)
    inFileNames.salFileName = salFileName;
end


  results    = [tempname '.out'];
  resultsWtr = [tempname '.out'];
  StFig      = [tempname '.out'];
  uStFig     = [tempname '.out'];
  LnFig      = [tempname '.out'];
  WFig       = [tempname '.out'];
  wTempFig   = [tempname '.out'];
  wndSpdFig  = [tempname '.out'];
  metaTFig   = [tempname '.out'];
  metaBFig   = [tempname '.out'];
  thermDFig  = [tempname '.out'];
  SthermDFig = [tempname '.out'];
  SmetaBFig  = [tempname '.out'];
  SmetaTFig  = [tempname '.out'];
  SuStFig    = [tempname '.out'];
  SLnFig     = [tempname '.out'];
  SWFig      = [tempname '.out'];
  N2Fig      = [tempname '.out'];
  SN2Fig     = [tempname '.out'];
  T1Fig      = [tempname '.out'];
  ST1Fig     = [tempname '.out'];

  outFileNames = struct(          ...
        'results',    results,    ...
        'resultsWtr', resultsWtr, ...
        'StFig',      StFig,      ...
        'uStFig',     uStFig,     ...
        'LnFig',      LnFig,      ...
        'WFig',       WFig,       ...
        'wTempFig',   wTempFig,   ...
        'wndSpdFig',  wndSpdFig,  ...
        'metaTFig',   metaTFig,   ...
        'metaBFig',   metaBFig,   ...
        'thermDFig',  thermDFig,  ...
        'SthermDFig', SthermDFig, ...
        'SmetaBFig',  SmetaBFig,  ...
        'SmetaTFig',  SmetaTFig,  ...
        'SuStFig',    SuStFig,    ...
        'SLnFig',     SLnFig,     ...
        'SWFig',      SWFig,      ...
        'N2Fig',      N2Fig,      ...
        'SN2Fig',     SN2Fig,     ...
        'T1Fig',      T1Fig,      ...
        'ST1Fig',     ST1Fig      ...
  );

  LA(outPuts, outputResolution, totalDepth, windHeight, windAveraging, ...
     layerAveraging,outlierWindow,maxWaterTemp, minWaterTemp, maxWindSpeed, ...
      minWindSpeed, metaMinSlope, mixedTempDifferential, inFileNames, ...
      outFileNames, pltMods, 1, 1)
end