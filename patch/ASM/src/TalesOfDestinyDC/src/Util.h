#ifndef __UTIL_H__
#define __UTIL_H__

template <class T, class V>
inline T* bsearch(T* data, int numElems, const V compare)
{
	s32 first = 0;
	s32 last = numElems-1;

	while (last >= first)
	{
		int mid = (last+first)/2;
		if (data[mid] == compare)
			return &data[mid];

		if (data[mid] < compare)
			first = mid+1;
		else
			last = mid-1;
	}

	// not found
	return 0;
}

#endif