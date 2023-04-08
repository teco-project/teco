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

import Logging
import NIOCore
import TecoCore

extension Eiam {
    /// DescribePublicKey请求参数结构体
    public struct DescribePublicKeyRequest: TCRequestModel {
        /// 应用ID，是应用的全局唯一标识。
        public let applicationId: String

        public init(applicationId: String) {
            self.applicationId = applicationId
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
        }
    }

    /// DescribePublicKey返回参数结构体
    public struct DescribePublicKeyResponse: TCResponseModel {
        /// jwt验证签名所用的公钥信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicKey: String?

        /// jwt的密钥id。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyId: String?

        /// 应用ID，是应用的全局唯一标识。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case publicKey = "PublicKey"
            case keyId = "KeyId"
            case applicationId = "ApplicationId"
            case requestId = "RequestId"
        }
    }

    /// 获取JWT公钥信息
    ///
    /// 获取JWT公钥信息。
    @inlinable
    public func describePublicKey(_ input: DescribePublicKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublicKeyResponse> {
        self.client.execute(action: "DescribePublicKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取JWT公钥信息
    ///
    /// 获取JWT公钥信息。
    @inlinable
    public func describePublicKey(_ input: DescribePublicKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublicKeyResponse {
        try await self.client.execute(action: "DescribePublicKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取JWT公钥信息
    ///
    /// 获取JWT公钥信息。
    @inlinable
    public func describePublicKey(applicationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePublicKeyResponse> {
        self.describePublicKey(.init(applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取JWT公钥信息
    ///
    /// 获取JWT公钥信息。
    @inlinable
    public func describePublicKey(applicationId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePublicKeyResponse {
        try await self.describePublicKey(.init(applicationId: applicationId), region: region, logger: logger, on: eventLoop)
    }
}
