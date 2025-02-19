import { FeatureChoiced, FeatureDropdownInput, FeatureColorInput, Feature } from './base';

export const feature_head_tentacles: FeatureChoiced = {
  name: 'Head Tentacles',
  component: FeatureDropdownInput,
};

export const feature_tajaran_tail: FeatureChoiced = {
  name: 'Tail',
  component: FeatureDropdownInput,
};

export const feature_tajaran_ears: FeatureChoiced = {
  name: 'Tajaran Ears',
  component: FeatureDropdownInput,
};

export const feature_tajaran_snout: FeatureChoiced = {
  name: 'Snout',
  component: FeatureDropdownInput,
};

export const feature_tajaran_markings: FeatureChoiced = {
  name: 'Body Markings',
  component: FeatureDropdownInput,
};

export const tajaran_body_markings_color: Feature<string> = {
  name: 'Tajaran Body Markings Color',
  component: FeatureColorInput,
};

export const feature_avian_tail: FeatureChoiced = {
  name: 'Tail',
  component: FeatureDropdownInput,
};
