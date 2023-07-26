# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: sigstore_common.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("sigstore_common.proto", :syntax => :proto3) do
    add_message "dev.sigstore.common.v1.HashOutput" do
      optional :algorithm, :enum, 1, "dev.sigstore.common.v1.HashAlgorithm"
      optional :digest, :bytes, 2
    end
    add_message "dev.sigstore.common.v1.MessageSignature" do
      optional :message_digest, :message, 1, "dev.sigstore.common.v1.HashOutput"
      optional :signature, :bytes, 2
    end
    add_message "dev.sigstore.common.v1.LogId" do
      optional :key_id, :bytes, 1
    end
    add_message "dev.sigstore.common.v1.RFC3161SignedTimestamp" do
      optional :signed_timestamp, :bytes, 1
    end
    add_message "dev.sigstore.common.v1.PublicKey" do
      proto3_optional :raw_bytes, :bytes, 1
      optional :key_details, :enum, 2, "dev.sigstore.common.v1.PublicKeyDetails"
      proto3_optional :valid_for, :message, 3, "dev.sigstore.common.v1.TimeRange"
    end
    add_message "dev.sigstore.common.v1.PublicKeyIdentifier" do
      optional :hint, :string, 1
    end
    add_message "dev.sigstore.common.v1.ObjectIdentifier" do
      repeated :id, :int32, 1
    end
    add_message "dev.sigstore.common.v1.ObjectIdentifierValuePair" do
      optional :oid, :message, 1, "dev.sigstore.common.v1.ObjectIdentifier"
      optional :value, :bytes, 2
    end
    add_message "dev.sigstore.common.v1.DistinguishedName" do
      optional :organization, :string, 1
      optional :common_name, :string, 2
    end
    add_message "dev.sigstore.common.v1.X509Certificate" do
      optional :raw_bytes, :bytes, 1
    end
    add_message "dev.sigstore.common.v1.SubjectAlternativeName" do
      optional :type, :enum, 1, "dev.sigstore.common.v1.SubjectAlternativeNameType"
      oneof :identity do
        optional :regexp, :string, 2
        optional :value, :string, 3
      end
    end
    add_message "dev.sigstore.common.v1.X509CertificateChain" do
      repeated :certificates, :message, 1, "dev.sigstore.common.v1.X509Certificate"
    end
    add_message "dev.sigstore.common.v1.TimeRange" do
      optional :start, :message, 1, "google.protobuf.Timestamp"
      proto3_optional :end, :message, 2, "google.protobuf.Timestamp"
    end
    add_enum "dev.sigstore.common.v1.HashAlgorithm" do
      value :HASH_ALGORITHM_UNSPECIFIED, 0
      value :SHA2_256, 1
    end
    add_enum "dev.sigstore.common.v1.PublicKeyDetails" do
      value :PUBLIC_KEY_DETAILS_UNSPECIFIED, 0
      value :PKCS1_RSA_PKCS1V5, 1
      value :PKCS1_RSA_PSS, 2
      value :PKIX_RSA_PKCS1V5, 3
      value :PKIX_RSA_PSS, 4
      value :PKIX_ECDSA_P256_SHA_256, 5
      value :PKIX_ECDSA_P256_HMAC_SHA_256, 6
      value :PKIX_ED25519, 7
    end
    add_enum "dev.sigstore.common.v1.SubjectAlternativeNameType" do
      value :SUBJECT_ALTERNATIVE_NAME_TYPE_UNSPECIFIED, 0
      value :EMAIL, 1
      value :URI, 2
      value :OTHER_NAME, 3
    end
  end
end

module Sigstore
  module Common
    module V1
      HashOutput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.HashOutput").msgclass
      MessageSignature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.MessageSignature").msgclass
      LogId = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.LogId").msgclass
      RFC3161SignedTimestamp = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.RFC3161SignedTimestamp").msgclass
      PublicKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.PublicKey").msgclass
      PublicKeyIdentifier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.PublicKeyIdentifier").msgclass
      ObjectIdentifier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.ObjectIdentifier").msgclass
      ObjectIdentifierValuePair = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.ObjectIdentifierValuePair").msgclass
      DistinguishedName = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.DistinguishedName").msgclass
      X509Certificate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.X509Certificate").msgclass
      SubjectAlternativeName = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.SubjectAlternativeName").msgclass
      X509CertificateChain = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.X509CertificateChain").msgclass
      TimeRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.TimeRange").msgclass
      HashAlgorithm = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.HashAlgorithm").enummodule
      PublicKeyDetails = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.PublicKeyDetails").enummodule
      SubjectAlternativeNameType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dev.sigstore.common.v1.SubjectAlternativeNameType").enummodule
    end
  end
end