import axios from 'axios';
import { camelizeKeys } from 'humps';

export function getPosts() {
  return axios.get('/api/v1/posts')
    .then(res => camelizeKeys(res));
}
