import axios from 'axios';
import { camelizeKeys } from 'humps';

export function getCategories() {
  return axios.get('/api/v1/categories')
    .then(res => camelizeKeys(res));
}
