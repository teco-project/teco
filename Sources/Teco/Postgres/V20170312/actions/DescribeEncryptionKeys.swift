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

extension Postgres {
    /// DescribeEncryptionKeys请求参数结构体
    public struct DescribeEncryptionKeysRequest: TCRequest {
        /// 实例ID。
        public let dbInstanceId: String

        public init(dbInstanceId: String) {
            self.dbInstanceId = dbInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
        }
    }

    /// DescribeEncryptionKeys返回参数结构体
    public struct DescribeEncryptionKeysResponse: TCResponse {
        /// 实例密钥信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryptionKeys: [EncryptionKey]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case encryptionKeys = "EncryptionKeys"
            case requestId = "RequestId"
        }
    }

    /// 查询实例密钥信息列表
    ///
    /// 本接口 （DescribeEncryptionKeys） 用于查询实例的密钥信息列表。
    @inlinable
    public func describeEncryptionKeys(_ input: DescribeEncryptionKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEncryptionKeysResponse> {
        self.client.execute(action: "DescribeEncryptionKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例密钥信息列表
    ///
    /// 本接口 （DescribeEncryptionKeys） 用于查询实例的密钥信息列表。
    @inlinable
    public func describeEncryptionKeys(_ input: DescribeEncryptionKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEncryptionKeysResponse {
        try await self.client.execute(action: "DescribeEncryptionKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例密钥信息列表
    ///
    /// 本接口 （DescribeEncryptionKeys） 用于查询实例的密钥信息列表。
    @inlinable
    public func describeEncryptionKeys(dbInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEncryptionKeysResponse> {
        self.describeEncryptionKeys(.init(dbInstanceId: dbInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例密钥信息列表
    ///
    /// 本接口 （DescribeEncryptionKeys） 用于查询实例的密钥信息列表。
    @inlinable
    public func describeEncryptionKeys(dbInstanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEncryptionKeysResponse {
        try await self.describeEncryptionKeys(.init(dbInstanceId: dbInstanceId), region: region, logger: logger, on: eventLoop)
    }
}
