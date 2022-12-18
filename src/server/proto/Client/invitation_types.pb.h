// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: invitation_types.proto

#ifndef PROTOBUF_invitation_5ftypes_2eproto__INCLUDED
#define PROTOBUF_invitation_5ftypes_2eproto__INCLUDED

#include <string>

#include <google/protobuf/stubs/common.h>

#if GOOGLE_PROTOBUF_VERSION < 2006000
#error This file was generated by a newer version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please update
#error your headers.
#endif
#if 2006001 < GOOGLE_PROTOBUF_MIN_PROTOC_VERSION
#error This file was generated by an older version of protoc which is
#error incompatible with your Protocol Buffer headers.  Please
#error regenerate this file with a newer version of protoc.
#endif

#include <google/protobuf/generated_message_util.h>
#include <google/protobuf/message.h>
#include <google/protobuf/repeated_field.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/generated_enum_reflection.h>
#include <google/protobuf/unknown_field_set.h>
#include "entity_types.pb.h"
#include "Define.h" // for TC_PROTO_API
// @@protoc_insertion_point(includes)

namespace bgs {
namespace protocol {

// Internal implementation detail -- do not call these.
void TC_PROTO_API protobuf_AddDesc_invitation_5ftypes_2eproto();
void protobuf_AssignDesc_invitation_5ftypes_2eproto();
void protobuf_ShutdownFile_invitation_5ftypes_2eproto();

class Invitation;
class InvitationParams;

enum InvitationRemovedReason {
  INVITATION_REMOVED_REASON_ACCEPTED = 0,
  INVITATION_REMOVED_REASON_DECLINED = 1,
  INVITATION_REMOVED_REASON_REVOKED = 2,
  INVITATION_REMOVED_REASON_IGNORED = 3,
  INVITATION_REMOVED_REASON_EXPIRED = 4,
  INVITATION_REMOVED_REASON_CANCELED = 5
};
TC_PROTO_API bool InvitationRemovedReason_IsValid(int value);
const InvitationRemovedReason InvitationRemovedReason_MIN = INVITATION_REMOVED_REASON_ACCEPTED;
const InvitationRemovedReason InvitationRemovedReason_MAX = INVITATION_REMOVED_REASON_CANCELED;
const int InvitationRemovedReason_ARRAYSIZE = InvitationRemovedReason_MAX + 1;

TC_PROTO_API const ::google::protobuf::EnumDescriptor* InvitationRemovedReason_descriptor();
inline const ::std::string& InvitationRemovedReason_Name(InvitationRemovedReason value) {
  return ::google::protobuf::internal::NameOfEnum(
    InvitationRemovedReason_descriptor(), value);
}
inline bool InvitationRemovedReason_Parse(
    const ::std::string& name, InvitationRemovedReason* value) {
  return ::google::protobuf::internal::ParseNamedEnum<InvitationRemovedReason>(
    InvitationRemovedReason_descriptor(), name, value);
}
enum SuggestionRemovedReason {
  SUGGESTION_REMOVED_REASON_APPROVED = 0,
  SUGGESTION_REMOVED_REASON_DECLINED = 1,
  SUGGESTION_REMOVED_REASON_EXPIRED = 2,
  SUGGESTION_REMOVED_REASON_CANCELED = 3
};
TC_PROTO_API bool SuggestionRemovedReason_IsValid(int value);
const SuggestionRemovedReason SuggestionRemovedReason_MIN = SUGGESTION_REMOVED_REASON_APPROVED;
const SuggestionRemovedReason SuggestionRemovedReason_MAX = SUGGESTION_REMOVED_REASON_CANCELED;
const int SuggestionRemovedReason_ARRAYSIZE = SuggestionRemovedReason_MAX + 1;

TC_PROTO_API const ::google::protobuf::EnumDescriptor* SuggestionRemovedReason_descriptor();
inline const ::std::string& SuggestionRemovedReason_Name(SuggestionRemovedReason value) {
  return ::google::protobuf::internal::NameOfEnum(
    SuggestionRemovedReason_descriptor(), value);
}
inline bool SuggestionRemovedReason_Parse(
    const ::std::string& name, SuggestionRemovedReason* value) {
  return ::google::protobuf::internal::ParseNamedEnum<SuggestionRemovedReason>(
    SuggestionRemovedReason_descriptor(), name, value);
}
// ===================================================================

class TC_PROTO_API Invitation : public ::google::protobuf::Message {
 public:
  Invitation();
  virtual ~Invitation();

  Invitation(const Invitation& from);

  inline Invitation& operator=(const Invitation& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const Invitation& default_instance();

  void Swap(Invitation* other);

  // implements Message ----------------------------------------------

  Invitation* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const Invitation& from);
  void MergeFrom(const Invitation& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // required fixed64 id = 1;
  inline bool has_id() const;
  inline void clear_id();
  static const int kIdFieldNumber = 1;
  inline ::google::protobuf::uint64 id() const;
  inline void set_id(::google::protobuf::uint64 value);

  // required .bgs.protocol.Identity inviter_identity = 2;
  inline bool has_inviter_identity() const;
  inline void clear_inviter_identity();
  static const int kInviterIdentityFieldNumber = 2;
  inline const ::bgs::protocol::Identity& inviter_identity() const;
  inline ::bgs::protocol::Identity* mutable_inviter_identity();
  inline ::bgs::protocol::Identity* release_inviter_identity();
  inline void set_allocated_inviter_identity(::bgs::protocol::Identity* inviter_identity);

  // required .bgs.protocol.Identity invitee_identity = 3;
  inline bool has_invitee_identity() const;
  inline void clear_invitee_identity();
  static const int kInviteeIdentityFieldNumber = 3;
  inline const ::bgs::protocol::Identity& invitee_identity() const;
  inline ::bgs::protocol::Identity* mutable_invitee_identity();
  inline ::bgs::protocol::Identity* release_invitee_identity();
  inline void set_allocated_invitee_identity(::bgs::protocol::Identity* invitee_identity);

  // optional string inviter_name = 4;
  inline bool has_inviter_name() const;
  inline void clear_inviter_name();
  static const int kInviterNameFieldNumber = 4;
  inline const ::std::string& inviter_name() const;
  inline void set_inviter_name(const ::std::string& value);
  inline void set_inviter_name(const char* value);
  inline void set_inviter_name(const char* value, size_t size);
  inline ::std::string* mutable_inviter_name();
  inline ::std::string* release_inviter_name();
  inline void set_allocated_inviter_name(::std::string* inviter_name);

  // optional string invitee_name = 5;
  inline bool has_invitee_name() const;
  inline void clear_invitee_name();
  static const int kInviteeNameFieldNumber = 5;
  inline const ::std::string& invitee_name() const;
  inline void set_invitee_name(const ::std::string& value);
  inline void set_invitee_name(const char* value);
  inline void set_invitee_name(const char* value, size_t size);
  inline ::std::string* mutable_invitee_name();
  inline ::std::string* release_invitee_name();
  inline void set_allocated_invitee_name(::std::string* invitee_name);

  // optional string invitation_message = 6;
  inline bool has_invitation_message() const;
  inline void clear_invitation_message();
  static const int kInvitationMessageFieldNumber = 6;
  inline const ::std::string& invitation_message() const;
  inline void set_invitation_message(const ::std::string& value);
  inline void set_invitation_message(const char* value);
  inline void set_invitation_message(const char* value, size_t size);
  inline ::std::string* mutable_invitation_message();
  inline ::std::string* release_invitation_message();
  inline void set_allocated_invitation_message(::std::string* invitation_message);

  // optional uint64 creation_time = 7;
  inline bool has_creation_time() const;
  inline void clear_creation_time();
  static const int kCreationTimeFieldNumber = 7;
  inline ::google::protobuf::uint64 creation_time() const;
  inline void set_creation_time(::google::protobuf::uint64 value);

  // optional uint64 expiration_time = 8;
  inline bool has_expiration_time() const;
  inline void clear_expiration_time();
  static const int kExpirationTimeFieldNumber = 8;
  inline ::google::protobuf::uint64 expiration_time() const;
  inline void set_expiration_time(::google::protobuf::uint64 value);

  GOOGLE_PROTOBUF_EXTENSION_ACCESSORS(Invitation)
  // @@protoc_insertion_point(class_scope:bgs.protocol.Invitation)
 private:
  inline void set_has_id();
  inline void clear_has_id();
  inline void set_has_inviter_identity();
  inline void clear_has_inviter_identity();
  inline void set_has_invitee_identity();
  inline void clear_has_invitee_identity();
  inline void set_has_inviter_name();
  inline void clear_has_inviter_name();
  inline void set_has_invitee_name();
  inline void clear_has_invitee_name();
  inline void set_has_invitation_message();
  inline void clear_has_invitation_message();
  inline void set_has_creation_time();
  inline void clear_has_creation_time();
  inline void set_has_expiration_time();
  inline void clear_has_expiration_time();

  ::google::protobuf::internal::ExtensionSet _extensions_;

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::google::protobuf::uint64 id_;
  ::bgs::protocol::Identity* inviter_identity_;
  ::bgs::protocol::Identity* invitee_identity_;
  ::std::string* inviter_name_;
  ::std::string* invitee_name_;
  ::std::string* invitation_message_;
  ::google::protobuf::uint64 creation_time_;
  ::google::protobuf::uint64 expiration_time_;
  friend void TC_PROTO_API protobuf_AddDesc_invitation_5ftypes_2eproto();
  friend void protobuf_AssignDesc_invitation_5ftypes_2eproto();
  friend void protobuf_ShutdownFile_invitation_5ftypes_2eproto();

  void InitAsDefaultInstance();
  static Invitation* default_instance_;
};
// -------------------------------------------------------------------

class TC_PROTO_API InvitationParams : public ::google::protobuf::Message {
 public:
  InvitationParams();
  virtual ~InvitationParams();

  InvitationParams(const InvitationParams& from);

  inline InvitationParams& operator=(const InvitationParams& from) {
    CopyFrom(from);
    return *this;
  }

  inline const ::google::protobuf::UnknownFieldSet& unknown_fields() const {
    return _unknown_fields_;
  }

  inline ::google::protobuf::UnknownFieldSet* mutable_unknown_fields() {
    return &_unknown_fields_;
  }

  static const ::google::protobuf::Descriptor* descriptor();
  static const InvitationParams& default_instance();

  void Swap(InvitationParams* other);

  // implements Message ----------------------------------------------

  InvitationParams* New() const;
  void CopyFrom(const ::google::protobuf::Message& from);
  void MergeFrom(const ::google::protobuf::Message& from);
  void CopyFrom(const InvitationParams& from);
  void MergeFrom(const InvitationParams& from);
  void Clear();
  bool IsInitialized() const;

  int ByteSize() const;
  bool MergePartialFromCodedStream(
      ::google::protobuf::io::CodedInputStream* input);
  void SerializeWithCachedSizes(
      ::google::protobuf::io::CodedOutputStream* output) const;
  ::google::protobuf::uint8* SerializeWithCachedSizesToArray(::google::protobuf::uint8* output) const;
  int GetCachedSize() const { return _cached_size_; }
  private:
  void SharedCtor();
  void SharedDtor();
  void SetCachedSize(int size) const;
  public:
  ::google::protobuf::Metadata GetMetadata() const;

  // nested types ----------------------------------------------------

  // accessors -------------------------------------------------------

  // optional string invitation_message = 1 [deprecated = true];
  inline bool has_invitation_message() const PROTOBUF_DEPRECATED;
  inline void clear_invitation_message() PROTOBUF_DEPRECATED;
  static const int kInvitationMessageFieldNumber = 1;
  inline const ::std::string& invitation_message() const PROTOBUF_DEPRECATED;
  inline void set_invitation_message(const ::std::string& value) PROTOBUF_DEPRECATED;
  inline void set_invitation_message(const char* value) PROTOBUF_DEPRECATED;
  inline void set_invitation_message(const char* value, size_t size) PROTOBUF_DEPRECATED;
  inline ::std::string* mutable_invitation_message() PROTOBUF_DEPRECATED;
  inline ::std::string* release_invitation_message() PROTOBUF_DEPRECATED;
  inline void set_allocated_invitation_message(::std::string* invitation_message) PROTOBUF_DEPRECATED;

  // optional uint64 expiration_time = 2;
  inline bool has_expiration_time() const;
  inline void clear_expiration_time();
  static const int kExpirationTimeFieldNumber = 2;
  inline ::google::protobuf::uint64 expiration_time() const;
  inline void set_expiration_time(::google::protobuf::uint64 value);

  GOOGLE_PROTOBUF_EXTENSION_ACCESSORS(InvitationParams)
  // @@protoc_insertion_point(class_scope:bgs.protocol.InvitationParams)
 private:
  inline void set_has_invitation_message();
  inline void clear_has_invitation_message();
  inline void set_has_expiration_time();
  inline void clear_has_expiration_time();

  ::google::protobuf::internal::ExtensionSet _extensions_;

  ::google::protobuf::UnknownFieldSet _unknown_fields_;

  ::google::protobuf::uint32 _has_bits_[1];
  mutable int _cached_size_;
  ::std::string* invitation_message_;
  ::google::protobuf::uint64 expiration_time_;
  friend void TC_PROTO_API protobuf_AddDesc_invitation_5ftypes_2eproto();
  friend void protobuf_AssignDesc_invitation_5ftypes_2eproto();
  friend void protobuf_ShutdownFile_invitation_5ftypes_2eproto();

  void InitAsDefaultInstance();
  static InvitationParams* default_instance_;
};
// ===================================================================

// ===================================================================

// ===================================================================

// Invitation

// required fixed64 id = 1;
inline bool Invitation::has_id() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void Invitation::set_has_id() {
  _has_bits_[0] |= 0x00000001u;
}
inline void Invitation::clear_has_id() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void Invitation::clear_id() {
  id_ = GOOGLE_ULONGLONG(0);
  clear_has_id();
}
inline ::google::protobuf::uint64 Invitation::id() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.Invitation.id)
  return id_;
}
inline void Invitation::set_id(::google::protobuf::uint64 value) {
  set_has_id();
  id_ = value;
  // @@protoc_insertion_point(field_set:bgs.protocol.Invitation.id)
}

// required .bgs.protocol.Identity inviter_identity = 2;
inline bool Invitation::has_inviter_identity() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void Invitation::set_has_inviter_identity() {
  _has_bits_[0] |= 0x00000002u;
}
inline void Invitation::clear_has_inviter_identity() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void Invitation::clear_inviter_identity() {
  if (inviter_identity_ != NULL) inviter_identity_->::bgs::protocol::Identity::Clear();
  clear_has_inviter_identity();
}
inline const ::bgs::protocol::Identity& Invitation::inviter_identity() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.Invitation.inviter_identity)
  return inviter_identity_ != NULL ? *inviter_identity_ : *default_instance_->inviter_identity_;
}
inline ::bgs::protocol::Identity* Invitation::mutable_inviter_identity() {
  set_has_inviter_identity();
  if (inviter_identity_ == NULL) inviter_identity_ = new ::bgs::protocol::Identity;
  // @@protoc_insertion_point(field_mutable:bgs.protocol.Invitation.inviter_identity)
  return inviter_identity_;
}
inline ::bgs::protocol::Identity* Invitation::release_inviter_identity() {
  clear_has_inviter_identity();
  ::bgs::protocol::Identity* temp = inviter_identity_;
  inviter_identity_ = NULL;
  return temp;
}
inline void Invitation::set_allocated_inviter_identity(::bgs::protocol::Identity* inviter_identity) {
  delete inviter_identity_;
  inviter_identity_ = inviter_identity;
  if (inviter_identity) {
    set_has_inviter_identity();
  } else {
    clear_has_inviter_identity();
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.Invitation.inviter_identity)
}

// required .bgs.protocol.Identity invitee_identity = 3;
inline bool Invitation::has_invitee_identity() const {
  return (_has_bits_[0] & 0x00000004u) != 0;
}
inline void Invitation::set_has_invitee_identity() {
  _has_bits_[0] |= 0x00000004u;
}
inline void Invitation::clear_has_invitee_identity() {
  _has_bits_[0] &= ~0x00000004u;
}
inline void Invitation::clear_invitee_identity() {
  if (invitee_identity_ != NULL) invitee_identity_->::bgs::protocol::Identity::Clear();
  clear_has_invitee_identity();
}
inline const ::bgs::protocol::Identity& Invitation::invitee_identity() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.Invitation.invitee_identity)
  return invitee_identity_ != NULL ? *invitee_identity_ : *default_instance_->invitee_identity_;
}
inline ::bgs::protocol::Identity* Invitation::mutable_invitee_identity() {
  set_has_invitee_identity();
  if (invitee_identity_ == NULL) invitee_identity_ = new ::bgs::protocol::Identity;
  // @@protoc_insertion_point(field_mutable:bgs.protocol.Invitation.invitee_identity)
  return invitee_identity_;
}
inline ::bgs::protocol::Identity* Invitation::release_invitee_identity() {
  clear_has_invitee_identity();
  ::bgs::protocol::Identity* temp = invitee_identity_;
  invitee_identity_ = NULL;
  return temp;
}
inline void Invitation::set_allocated_invitee_identity(::bgs::protocol::Identity* invitee_identity) {
  delete invitee_identity_;
  invitee_identity_ = invitee_identity;
  if (invitee_identity) {
    set_has_invitee_identity();
  } else {
    clear_has_invitee_identity();
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.Invitation.invitee_identity)
}

// optional string inviter_name = 4;
inline bool Invitation::has_inviter_name() const {
  return (_has_bits_[0] & 0x00000008u) != 0;
}
inline void Invitation::set_has_inviter_name() {
  _has_bits_[0] |= 0x00000008u;
}
inline void Invitation::clear_has_inviter_name() {
  _has_bits_[0] &= ~0x00000008u;
}
inline void Invitation::clear_inviter_name() {
  if (inviter_name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    inviter_name_->clear();
  }
  clear_has_inviter_name();
}
inline const ::std::string& Invitation::inviter_name() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.Invitation.inviter_name)
  return *inviter_name_;
}
inline void Invitation::set_inviter_name(const ::std::string& value) {
  set_has_inviter_name();
  if (inviter_name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    inviter_name_ = new ::std::string;
  }
  inviter_name_->assign(value);
  // @@protoc_insertion_point(field_set:bgs.protocol.Invitation.inviter_name)
}
inline void Invitation::set_inviter_name(const char* value) {
  set_has_inviter_name();
  if (inviter_name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    inviter_name_ = new ::std::string;
  }
  inviter_name_->assign(value);
  // @@protoc_insertion_point(field_set_char:bgs.protocol.Invitation.inviter_name)
}
inline void Invitation::set_inviter_name(const char* value, size_t size) {
  set_has_inviter_name();
  if (inviter_name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    inviter_name_ = new ::std::string;
  }
  inviter_name_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:bgs.protocol.Invitation.inviter_name)
}
inline ::std::string* Invitation::mutable_inviter_name() {
  set_has_inviter_name();
  if (inviter_name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    inviter_name_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:bgs.protocol.Invitation.inviter_name)
  return inviter_name_;
}
inline ::std::string* Invitation::release_inviter_name() {
  clear_has_inviter_name();
  if (inviter_name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = inviter_name_;
    inviter_name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void Invitation::set_allocated_inviter_name(::std::string* inviter_name) {
  if (inviter_name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete inviter_name_;
  }
  if (inviter_name) {
    set_has_inviter_name();
    inviter_name_ = inviter_name;
  } else {
    clear_has_inviter_name();
    inviter_name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.Invitation.inviter_name)
}

// optional string invitee_name = 5;
inline bool Invitation::has_invitee_name() const {
  return (_has_bits_[0] & 0x00000010u) != 0;
}
inline void Invitation::set_has_invitee_name() {
  _has_bits_[0] |= 0x00000010u;
}
inline void Invitation::clear_has_invitee_name() {
  _has_bits_[0] &= ~0x00000010u;
}
inline void Invitation::clear_invitee_name() {
  if (invitee_name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitee_name_->clear();
  }
  clear_has_invitee_name();
}
inline const ::std::string& Invitation::invitee_name() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.Invitation.invitee_name)
  return *invitee_name_;
}
inline void Invitation::set_invitee_name(const ::std::string& value) {
  set_has_invitee_name();
  if (invitee_name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitee_name_ = new ::std::string;
  }
  invitee_name_->assign(value);
  // @@protoc_insertion_point(field_set:bgs.protocol.Invitation.invitee_name)
}
inline void Invitation::set_invitee_name(const char* value) {
  set_has_invitee_name();
  if (invitee_name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitee_name_ = new ::std::string;
  }
  invitee_name_->assign(value);
  // @@protoc_insertion_point(field_set_char:bgs.protocol.Invitation.invitee_name)
}
inline void Invitation::set_invitee_name(const char* value, size_t size) {
  set_has_invitee_name();
  if (invitee_name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitee_name_ = new ::std::string;
  }
  invitee_name_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:bgs.protocol.Invitation.invitee_name)
}
inline ::std::string* Invitation::mutable_invitee_name() {
  set_has_invitee_name();
  if (invitee_name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitee_name_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:bgs.protocol.Invitation.invitee_name)
  return invitee_name_;
}
inline ::std::string* Invitation::release_invitee_name() {
  clear_has_invitee_name();
  if (invitee_name_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = invitee_name_;
    invitee_name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void Invitation::set_allocated_invitee_name(::std::string* invitee_name) {
  if (invitee_name_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete invitee_name_;
  }
  if (invitee_name) {
    set_has_invitee_name();
    invitee_name_ = invitee_name;
  } else {
    clear_has_invitee_name();
    invitee_name_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.Invitation.invitee_name)
}

// optional string invitation_message = 6;
inline bool Invitation::has_invitation_message() const {
  return (_has_bits_[0] & 0x00000020u) != 0;
}
inline void Invitation::set_has_invitation_message() {
  _has_bits_[0] |= 0x00000020u;
}
inline void Invitation::clear_has_invitation_message() {
  _has_bits_[0] &= ~0x00000020u;
}
inline void Invitation::clear_invitation_message() {
  if (invitation_message_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitation_message_->clear();
  }
  clear_has_invitation_message();
}
inline const ::std::string& Invitation::invitation_message() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.Invitation.invitation_message)
  return *invitation_message_;
}
inline void Invitation::set_invitation_message(const ::std::string& value) {
  set_has_invitation_message();
  if (invitation_message_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitation_message_ = new ::std::string;
  }
  invitation_message_->assign(value);
  // @@protoc_insertion_point(field_set:bgs.protocol.Invitation.invitation_message)
}
inline void Invitation::set_invitation_message(const char* value) {
  set_has_invitation_message();
  if (invitation_message_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitation_message_ = new ::std::string;
  }
  invitation_message_->assign(value);
  // @@protoc_insertion_point(field_set_char:bgs.protocol.Invitation.invitation_message)
}
inline void Invitation::set_invitation_message(const char* value, size_t size) {
  set_has_invitation_message();
  if (invitation_message_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitation_message_ = new ::std::string;
  }
  invitation_message_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:bgs.protocol.Invitation.invitation_message)
}
inline ::std::string* Invitation::mutable_invitation_message() {
  set_has_invitation_message();
  if (invitation_message_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitation_message_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:bgs.protocol.Invitation.invitation_message)
  return invitation_message_;
}
inline ::std::string* Invitation::release_invitation_message() {
  clear_has_invitation_message();
  if (invitation_message_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = invitation_message_;
    invitation_message_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void Invitation::set_allocated_invitation_message(::std::string* invitation_message) {
  if (invitation_message_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete invitation_message_;
  }
  if (invitation_message) {
    set_has_invitation_message();
    invitation_message_ = invitation_message;
  } else {
    clear_has_invitation_message();
    invitation_message_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.Invitation.invitation_message)
}

// optional uint64 creation_time = 7;
inline bool Invitation::has_creation_time() const {
  return (_has_bits_[0] & 0x00000040u) != 0;
}
inline void Invitation::set_has_creation_time() {
  _has_bits_[0] |= 0x00000040u;
}
inline void Invitation::clear_has_creation_time() {
  _has_bits_[0] &= ~0x00000040u;
}
inline void Invitation::clear_creation_time() {
  creation_time_ = GOOGLE_ULONGLONG(0);
  clear_has_creation_time();
}
inline ::google::protobuf::uint64 Invitation::creation_time() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.Invitation.creation_time)
  return creation_time_;
}
inline void Invitation::set_creation_time(::google::protobuf::uint64 value) {
  set_has_creation_time();
  creation_time_ = value;
  // @@protoc_insertion_point(field_set:bgs.protocol.Invitation.creation_time)
}

// optional uint64 expiration_time = 8;
inline bool Invitation::has_expiration_time() const {
  return (_has_bits_[0] & 0x00000080u) != 0;
}
inline void Invitation::set_has_expiration_time() {
  _has_bits_[0] |= 0x00000080u;
}
inline void Invitation::clear_has_expiration_time() {
  _has_bits_[0] &= ~0x00000080u;
}
inline void Invitation::clear_expiration_time() {
  expiration_time_ = GOOGLE_ULONGLONG(0);
  clear_has_expiration_time();
}
inline ::google::protobuf::uint64 Invitation::expiration_time() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.Invitation.expiration_time)
  return expiration_time_;
}
inline void Invitation::set_expiration_time(::google::protobuf::uint64 value) {
  set_has_expiration_time();
  expiration_time_ = value;
  // @@protoc_insertion_point(field_set:bgs.protocol.Invitation.expiration_time)
}

// -------------------------------------------------------------------

// InvitationParams

// optional string invitation_message = 1 [deprecated = true];
inline bool InvitationParams::has_invitation_message() const {
  return (_has_bits_[0] & 0x00000001u) != 0;
}
inline void InvitationParams::set_has_invitation_message() {
  _has_bits_[0] |= 0x00000001u;
}
inline void InvitationParams::clear_has_invitation_message() {
  _has_bits_[0] &= ~0x00000001u;
}
inline void InvitationParams::clear_invitation_message() {
  if (invitation_message_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitation_message_->clear();
  }
  clear_has_invitation_message();
}
inline const ::std::string& InvitationParams::invitation_message() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.InvitationParams.invitation_message)
  return *invitation_message_;
}
inline void InvitationParams::set_invitation_message(const ::std::string& value) {
  set_has_invitation_message();
  if (invitation_message_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitation_message_ = new ::std::string;
  }
  invitation_message_->assign(value);
  // @@protoc_insertion_point(field_set:bgs.protocol.InvitationParams.invitation_message)
}
inline void InvitationParams::set_invitation_message(const char* value) {
  set_has_invitation_message();
  if (invitation_message_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitation_message_ = new ::std::string;
  }
  invitation_message_->assign(value);
  // @@protoc_insertion_point(field_set_char:bgs.protocol.InvitationParams.invitation_message)
}
inline void InvitationParams::set_invitation_message(const char* value, size_t size) {
  set_has_invitation_message();
  if (invitation_message_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitation_message_ = new ::std::string;
  }
  invitation_message_->assign(reinterpret_cast<const char*>(value), size);
  // @@protoc_insertion_point(field_set_pointer:bgs.protocol.InvitationParams.invitation_message)
}
inline ::std::string* InvitationParams::mutable_invitation_message() {
  set_has_invitation_message();
  if (invitation_message_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    invitation_message_ = new ::std::string;
  }
  // @@protoc_insertion_point(field_mutable:bgs.protocol.InvitationParams.invitation_message)
  return invitation_message_;
}
inline ::std::string* InvitationParams::release_invitation_message() {
  clear_has_invitation_message();
  if (invitation_message_ == &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    return NULL;
  } else {
    ::std::string* temp = invitation_message_;
    invitation_message_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
    return temp;
  }
}
inline void InvitationParams::set_allocated_invitation_message(::std::string* invitation_message) {
  if (invitation_message_ != &::google::protobuf::internal::GetEmptyStringAlreadyInited()) {
    delete invitation_message_;
  }
  if (invitation_message) {
    set_has_invitation_message();
    invitation_message_ = invitation_message;
  } else {
    clear_has_invitation_message();
    invitation_message_ = const_cast< ::std::string*>(&::google::protobuf::internal::GetEmptyStringAlreadyInited());
  }
  // @@protoc_insertion_point(field_set_allocated:bgs.protocol.InvitationParams.invitation_message)
}

// optional uint64 expiration_time = 2;
inline bool InvitationParams::has_expiration_time() const {
  return (_has_bits_[0] & 0x00000002u) != 0;
}
inline void InvitationParams::set_has_expiration_time() {
  _has_bits_[0] |= 0x00000002u;
}
inline void InvitationParams::clear_has_expiration_time() {
  _has_bits_[0] &= ~0x00000002u;
}
inline void InvitationParams::clear_expiration_time() {
  expiration_time_ = GOOGLE_ULONGLONG(0);
  clear_has_expiration_time();
}
inline ::google::protobuf::uint64 InvitationParams::expiration_time() const {
  // @@protoc_insertion_point(field_get:bgs.protocol.InvitationParams.expiration_time)
  return expiration_time_;
}
inline void InvitationParams::set_expiration_time(::google::protobuf::uint64 value) {
  set_has_expiration_time();
  expiration_time_ = value;
  // @@protoc_insertion_point(field_set:bgs.protocol.InvitationParams.expiration_time)
}

// @@protoc_insertion_point(namespace_scope)

}  // namespace protocol
}  // namespace bgs

#ifndef SWIG
namespace google {
namespace protobuf {
template <> struct is_proto_enum< ::bgs::protocol::InvitationRemovedReason> : ::google::protobuf::internal::true_type {};
template <>
inline const EnumDescriptor* GetEnumDescriptor< ::bgs::protocol::InvitationRemovedReason>() {
  return ::bgs::protocol::InvitationRemovedReason_descriptor();
}
template <> struct is_proto_enum< ::bgs::protocol::SuggestionRemovedReason> : ::google::protobuf::internal::true_type {};
template <>
inline const EnumDescriptor* GetEnumDescriptor< ::bgs::protocol::SuggestionRemovedReason>() {
  return ::bgs::protocol::SuggestionRemovedReason_descriptor();
}
}  // namespace google
}  // namespace protobuf
#endif  // SWIG

// @@protoc_insertion_point(global_scope)

#endif  // PROTOBUF_invitation_5ftypes_2eproto__INCLUDED
