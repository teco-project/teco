//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Eiam {
    /// DescribeApplication请求参数结构体
    public struct DescribeApplicationRequest: TCRequestModel {
        /// 应用id，是应用的全局唯一标识，与ClientId参数不能同时为空。
        public let applicationId: String?

        /// 客户端id，与ApplicationId参数不能同时为空。
        public let clientId: String?

        public init(applicationId: String? = nil, clientId: String? = nil) {
            self.applicationId = applicationId
            self.clientId = clientId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case clientId = "ClientId"
        }
    }

    /// DescribeApplication返回参数结构体
    public struct DescribeApplicationResponse: TCResponseModel {
        /// 密钥id。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyId: String?

        /// 应用展示名称，长度限制：64个字符。 默认与应用名字相同。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let displayName: String?

        /// 应用最后修改时间，符合 ISO8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModifiedDate: String?

        /// 客户端id。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientId: String?

        /// 应用类型，即创建应用时所选择的应用模板类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationType: String?

        /// 应用创建时间，符合 ISO8601 标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdDate: String?

        /// 应用id，是应用的全局唯一标识。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationId: String?

        /// 令牌有效时间，单位为秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tokenExpired: Int64?

        /// 客户端secret。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientSecret: String?

        /// 公钥信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicKey: String?

        /// 授权地址。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authorizeUrl: String?

        /// 应用图标图片访问地址。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let iconUrl: String?

        /// 安全等级。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let secureLevel: String?

        /// 应用状态。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let appStatus: Bool?

        /// 描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case displayName = "DisplayName"
            case lastModifiedDate = "LastModifiedDate"
            case clientId = "ClientId"
            case applicationType = "ApplicationType"
            case createdDate = "CreatedDate"
            case applicationId = "ApplicationId"
            case tokenExpired = "TokenExpired"
            case clientSecret = "ClientSecret"
            case publicKey = "PublicKey"
            case authorizeUrl = "AuthorizeUrl"
            case iconUrl = "IconUrl"
            case secureLevel = "SecureLevel"
            case appStatus = "AppStatus"
            case description = "Description"
            case requestId = "RequestId"
        }
    }

    /// 获取应用信息
    ///
    /// 获取一个应用的信息。
    @inlinable
    public func describeApplication(_ input: DescribeApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationResponse> {
        self.client.execute(action: "DescribeApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用信息
    ///
    /// 获取一个应用的信息。
    @inlinable
    public func describeApplication(_ input: DescribeApplicationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationResponse {
        try await self.client.execute(action: "DescribeApplication", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用信息
    ///
    /// 获取一个应用的信息。
    @inlinable
    public func describeApplication(applicationId: String? = nil, clientId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationResponse> {
        self.describeApplication(DescribeApplicationRequest(applicationId: applicationId, clientId: clientId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用信息
    ///
    /// 获取一个应用的信息。
    @inlinable
    public func describeApplication(applicationId: String? = nil, clientId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationResponse {
        try await self.describeApplication(DescribeApplicationRequest(applicationId: applicationId, clientId: clientId), region: region, logger: logger, on: eventLoop)
    }
}
