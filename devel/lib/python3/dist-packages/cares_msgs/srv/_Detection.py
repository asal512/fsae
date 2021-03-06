# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cares_msgs/DetectionRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import sensor_msgs.msg
import std_msgs.msg

class DetectionRequest(genpy.Message):
  _md5sum = "93ecc01c6ff7e51537063c3fdd5f998c"
  _type = "cares_msgs/DetectionRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """sensor_msgs/Image[] image_list

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['image_list']
  _slot_types = ['sensor_msgs/Image[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       image_list

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DetectionRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.image_list is None:
        self.image_list = []
    else:
      self.image_list = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.image_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.image_list:
        _v1 = val1.header
        _x = _v1.seq
        buff.write(_get_struct_I().pack(_x))
        _v2 = _v1.stamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v1.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.height, _x.width))
        _x = val1.encoding
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_BI().pack(_x.is_bigendian, _x.step))
        _x = val1.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
        else:
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.image_list is None:
        self.image_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.image_list = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.Image()
        _v3 = val1.header
        start = end
        end += 4
        (_v3.seq,) = _get_struct_I().unpack(str[start:end])
        _v4 = _v3.stamp
        _x = _v4
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v3.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v3.frame_id = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.encoding = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.encoding = str[start:end]
        _x = val1
        start = end
        end += 5
        (_x.is_bigendian, _x.step,) = _get_struct_BI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        val1.data = str[start:end]
        self.image_list.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.image_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.image_list:
        _v5 = val1.header
        _x = _v5.seq
        buff.write(_get_struct_I().pack(_x))
        _v6 = _v5.stamp
        _x = _v6
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v5.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.height, _x.width))
        _x = val1.encoding
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_BI().pack(_x.is_bigendian, _x.step))
        _x = val1.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
        else:
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.image_list is None:
        self.image_list = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.image_list = []
      for i in range(0, length):
        val1 = sensor_msgs.msg.Image()
        _v7 = val1.header
        start = end
        end += 4
        (_v7.seq,) = _get_struct_I().unpack(str[start:end])
        _v8 = _v7.stamp
        _x = _v8
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v7.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v7.frame_id = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.encoding = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.encoding = str[start:end]
        _x = val1
        start = end
        end += 5
        (_x.is_bigendian, _x.step,) = _get_struct_BI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        val1.data = str[start:end]
        self.image_list.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_BI = None
def _get_struct_BI():
    global _struct_BI
    if _struct_BI is None:
        _struct_BI = struct.Struct("<BI")
    return _struct_BI
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cares_msgs/DetectionResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import cares_msgs.msg
import sensor_msgs.msg
import std_msgs.msg

class DetectionResponse(genpy.Message):
  _md5sum = "d35ecd7cde940f12bbae788dd93dab2b"
  _type = "cares_msgs/DetectionResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """cares_msgs/InstanceMasks[] results


================================================================================
MSG: cares_msgs/InstanceMasks
std_msgs/Header header

# ID for the associated image
uint32 image_id

# Bounding boxes in pixels
sensor_msgs/RegionOfInterest[] boxes

# Integer label IDs for each bounding box
int32[] labels

# Float probability scores of the class_id
float32[] scores

# Instance masks as Images
# 0: Mask [0 - 1]
sensor_msgs/Image[] masks

# Instance masks as Images
# 0: Mask [0 - 1]
# 1: Label
# 2: Instance
sensor_msgs/Image aggregated_mask
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the "raw"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)
"""
  __slots__ = ['results']
  _slot_types = ['cares_msgs/InstanceMasks[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       results

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DetectionResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.results is None:
        self.results = []
    else:
      self.results = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.results)
      buff.write(_struct_I.pack(length))
      for val1 in self.results:
        _v9 = val1.header
        _x = _v9.seq
        buff.write(_get_struct_I().pack(_x))
        _v10 = _v9.stamp
        _x = _v10
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v9.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.image_id
        buff.write(_get_struct_I().pack(_x))
        length = len(val1.boxes)
        buff.write(_struct_I.pack(length))
        for val2 in val1.boxes:
          _x = val2
          buff.write(_get_struct_4IB().pack(_x.x_offset, _x.y_offset, _x.height, _x.width, _x.do_rectify))
        length = len(val1.labels)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(struct.Struct(pattern).pack(*val1.labels))
        length = len(val1.scores)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.Struct(pattern).pack(*val1.scores))
        length = len(val1.masks)
        buff.write(_struct_I.pack(length))
        for val2 in val1.masks:
          _v11 = val2.header
          _x = _v11.seq
          buff.write(_get_struct_I().pack(_x))
          _v12 = _v11.stamp
          _x = _v12
          buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
          _x = _v11.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2
          buff.write(_get_struct_2I().pack(_x.height, _x.width))
          _x = val2.encoding
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2
          buff.write(_get_struct_BI().pack(_x.is_bigendian, _x.step))
          _x = val2.data
          length = len(_x)
          # - if encoded as a list instead, serialize as bytes instead of string
          if type(_x) in [list, tuple]:
            buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
          else:
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v13 = val1.aggregated_mask
        _v14 = _v13.header
        _x = _v14.seq
        buff.write(_get_struct_I().pack(_x))
        _v15 = _v14.stamp
        _x = _v15
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v14.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v13
        buff.write(_get_struct_2I().pack(_x.height, _x.width))
        _x = _v13.encoding
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v13
        buff.write(_get_struct_BI().pack(_x.is_bigendian, _x.step))
        _x = _v13.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
        else:
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.results is None:
        self.results = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.results = []
      for i in range(0, length):
        val1 = cares_msgs.msg.InstanceMasks()
        _v16 = val1.header
        start = end
        end += 4
        (_v16.seq,) = _get_struct_I().unpack(str[start:end])
        _v17 = _v16.stamp
        _x = _v17
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v16.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v16.frame_id = str[start:end]
        start = end
        end += 4
        (val1.image_id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.boxes = []
        for i in range(0, length):
          val2 = sensor_msgs.msg.RegionOfInterest()
          _x = val2
          start = end
          end += 17
          (_x.x_offset, _x.y_offset, _x.height, _x.width, _x.do_rectify,) = _get_struct_4IB().unpack(str[start:end])
          val2.do_rectify = bool(val2.do_rectify)
          val1.boxes.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.labels = s.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.scores = s.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.masks = []
        for i in range(0, length):
          val2 = sensor_msgs.msg.Image()
          _v18 = val2.header
          start = end
          end += 4
          (_v18.seq,) = _get_struct_I().unpack(str[start:end])
          _v19 = _v18.stamp
          _x = _v19
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v18.frame_id = str[start:end].decode('utf-8', 'rosmsg')
          else:
            _v18.frame_id = str[start:end]
          _x = val2
          start = end
          end += 8
          (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.encoding = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.encoding = str[start:end]
          _x = val2
          start = end
          end += 5
          (_x.is_bigendian, _x.step,) = _get_struct_BI().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          val2.data = str[start:end]
          val1.masks.append(val2)
        _v20 = val1.aggregated_mask
        _v21 = _v20.header
        start = end
        end += 4
        (_v21.seq,) = _get_struct_I().unpack(str[start:end])
        _v22 = _v21.stamp
        _x = _v22
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v21.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v21.frame_id = str[start:end]
        _x = _v20
        start = end
        end += 8
        (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v20.encoding = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v20.encoding = str[start:end]
        _x = _v20
        start = end
        end += 5
        (_x.is_bigendian, _x.step,) = _get_struct_BI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v20.data = str[start:end]
        self.results.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.results)
      buff.write(_struct_I.pack(length))
      for val1 in self.results:
        _v23 = val1.header
        _x = _v23.seq
        buff.write(_get_struct_I().pack(_x))
        _v24 = _v23.stamp
        _x = _v24
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v23.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.image_id
        buff.write(_get_struct_I().pack(_x))
        length = len(val1.boxes)
        buff.write(_struct_I.pack(length))
        for val2 in val1.boxes:
          _x = val2
          buff.write(_get_struct_4IB().pack(_x.x_offset, _x.y_offset, _x.height, _x.width, _x.do_rectify))
        length = len(val1.labels)
        buff.write(_struct_I.pack(length))
        pattern = '<%si'%length
        buff.write(val1.labels.tostring())
        length = len(val1.scores)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.scores.tostring())
        length = len(val1.masks)
        buff.write(_struct_I.pack(length))
        for val2 in val1.masks:
          _v25 = val2.header
          _x = _v25.seq
          buff.write(_get_struct_I().pack(_x))
          _v26 = _v25.stamp
          _x = _v26
          buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
          _x = _v25.frame_id
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2
          buff.write(_get_struct_2I().pack(_x.height, _x.width))
          _x = val2.encoding
          length = len(_x)
          if python3 or type(_x) == unicode:
            _x = _x.encode('utf-8')
            length = len(_x)
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
          _x = val2
          buff.write(_get_struct_BI().pack(_x.is_bigendian, _x.step))
          _x = val2.data
          length = len(_x)
          # - if encoded as a list instead, serialize as bytes instead of string
          if type(_x) in [list, tuple]:
            buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
          else:
            buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v27 = val1.aggregated_mask
        _v28 = _v27.header
        _x = _v28.seq
        buff.write(_get_struct_I().pack(_x))
        _v29 = _v28.stamp
        _x = _v29
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = _v28.frame_id
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v27
        buff.write(_get_struct_2I().pack(_x.height, _x.width))
        _x = _v27.encoding
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = _v27
        buff.write(_get_struct_BI().pack(_x.is_bigendian, _x.step))
        _x = _v27.data
        length = len(_x)
        # - if encoded as a list instead, serialize as bytes instead of string
        if type(_x) in [list, tuple]:
          buff.write(struct.Struct('<I%sB'%length).pack(length, *_x))
        else:
          buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.results is None:
        self.results = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.results = []
      for i in range(0, length):
        val1 = cares_msgs.msg.InstanceMasks()
        _v30 = val1.header
        start = end
        end += 4
        (_v30.seq,) = _get_struct_I().unpack(str[start:end])
        _v31 = _v30.stamp
        _x = _v31
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v30.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v30.frame_id = str[start:end]
        start = end
        end += 4
        (val1.image_id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.boxes = []
        for i in range(0, length):
          val2 = sensor_msgs.msg.RegionOfInterest()
          _x = val2
          start = end
          end += 17
          (_x.x_offset, _x.y_offset, _x.height, _x.width, _x.do_rectify,) = _get_struct_4IB().unpack(str[start:end])
          val2.do_rectify = bool(val2.do_rectify)
          val1.boxes.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%si'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.labels = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.scores = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.masks = []
        for i in range(0, length):
          val2 = sensor_msgs.msg.Image()
          _v32 = val2.header
          start = end
          end += 4
          (_v32.seq,) = _get_struct_I().unpack(str[start:end])
          _v33 = _v32.stamp
          _x = _v33
          start = end
          end += 8
          (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            _v32.frame_id = str[start:end].decode('utf-8', 'rosmsg')
          else:
            _v32.frame_id = str[start:end]
          _x = val2
          start = end
          end += 8
          (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2.encoding = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2.encoding = str[start:end]
          _x = val2
          start = end
          end += 5
          (_x.is_bigendian, _x.step,) = _get_struct_BI().unpack(str[start:end])
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          val2.data = str[start:end]
          val1.masks.append(val2)
        _v34 = val1.aggregated_mask
        _v35 = _v34.header
        start = end
        end += 4
        (_v35.seq,) = _get_struct_I().unpack(str[start:end])
        _v36 = _v35.stamp
        _x = _v36
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v35.frame_id = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v35.frame_id = str[start:end]
        _x = _v34
        start = end
        end += 8
        (_x.height, _x.width,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v34.encoding = str[start:end].decode('utf-8', 'rosmsg')
        else:
          _v34.encoding = str[start:end]
        _x = _v34
        start = end
        end += 5
        (_x.is_bigendian, _x.step,) = _get_struct_BI().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        _v34.data = str[start:end]
        self.results.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_4IB = None
def _get_struct_4IB():
    global _struct_4IB
    if _struct_4IB is None:
        _struct_4IB = struct.Struct("<4IB")
    return _struct_4IB
_struct_BI = None
def _get_struct_BI():
    global _struct_BI
    if _struct_BI is None:
        _struct_BI = struct.Struct("<BI")
    return _struct_BI
class Detection(object):
  _type          = 'cares_msgs/Detection'
  _md5sum = '5d8ead10cc464e486b8b27267419b3fb'
  _request_class  = DetectionRequest
  _response_class = DetectionResponse
