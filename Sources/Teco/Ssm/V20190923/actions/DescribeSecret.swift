//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ssm {
    /// DescribeSecret请求参数结构体
    public struct DescribeSecretRequest: TCRequestModel {
        /// 指定需要获取凭据详细信息的凭据名称。
        public let secretName: String

        public init(secretName: String) {
            self.secretName = secretName
        }

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
        }
    }

    /// DescribeSecret返回参数结构体
    public struct DescribeSecretResponse: TCResponseModel {
        /// 凭据名称。
        public let secretName: String

        /// 凭据描述信息。
        public let description: String

        /// 用于加密的KMS CMK ID。
        public let kmsKeyId: String

        /// 创建者UIN。
        public let createUin: UInt64

        /// 凭据状态：Enabled、Disabled、PendingDelete, Creating, Failed。
        public let status: String

        /// 删除日期，uinx 时间戳，非计划删除状态的凭据为0。
        public let deleteTime: UInt64

        /// 创建日期。
        public let createTime: UInt64

        /// 0 --  用户自定义凭据类型；1 -- 数据库凭据类型；2 -- SSH密钥对凭据类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let secretType: Int64?

        /// 云产品名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productName: String?

        /// 云产品实例ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceID: String?

        /// 是否开启轮转：True -- 开启轮转；False -- 关闭轮转。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rotationStatus: Bool?

        /// 轮转周期，默认以天为单位。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rotationFrequency: Int64?

        /// 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对凭据的名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceName: String?

        /// 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对所属的项目ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectID: Int64?

        /// 当凭据类型为SSH密钥对凭据时，此字段有效，用于表示SSH密钥对所关联的CVM实例ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let associatedInstanceIDs: [String]?

        /// 当凭据类型为云API密钥对凭据时，此字段有效，用于表示此云API密钥对所属的用户UIN。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let targetUin: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case secretName = "SecretName"
            case description = "Description"
            case kmsKeyId = "KmsKeyId"
            case createUin = "CreateUin"
            case status = "Status"
            case deleteTime = "DeleteTime"
            case createTime = "CreateTime"
            case secretType = "SecretType"
            case productName = "ProductName"
            case resourceID = "ResourceID"
            case rotationStatus = "RotationStatus"
            case rotationFrequency = "RotationFrequency"
            case resourceName = "ResourceName"
            case projectID = "ProjectID"
            case associatedInstanceIDs = "AssociatedInstanceIDs"
            case targetUin = "TargetUin"
            case requestId = "RequestId"
        }
    }

    /// 获取凭据详细信息
    ///
    /// 获取凭据的详细属性信息。
    @inlinable
    public func describeSecret(_ input: DescribeSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecretResponse> {
        self.client.execute(action: "DescribeSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取凭据详细信息
    ///
    /// 获取凭据的详细属性信息。
    @inlinable
    public func describeSecret(_ input: DescribeSecretRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecretResponse {
        try await self.client.execute(action: "DescribeSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取凭据详细信息
    ///
    /// 获取凭据的详细属性信息。
    @inlinable
    public func describeSecret(secretName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecretResponse> {
        let input = DescribeSecretRequest(secretName: secretName)
        return self.client.execute(action: "DescribeSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取凭据详细信息
    ///
    /// 获取凭据的详细属性信息。
    @inlinable
    public func describeSecret(secretName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecretResponse {
        let input = DescribeSecretRequest(secretName: secretName)
        return try await self.client.execute(action: "DescribeSecret", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
