@foreach ($data as $index=> $item)
    <select value="{{ $item->id }}" data-select2-id="{{ $index+1 }}">{{ $item->name }}</select>
@endforeach