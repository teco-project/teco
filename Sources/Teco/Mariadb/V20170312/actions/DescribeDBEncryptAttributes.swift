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

import TecoCore

extension Mariadb {
    /// DescribeDBEncryptAttributes请求参数结构体
    public struct DescribeDBEncryptAttributesRequest: TCRequestModel {
        /// 实例Id，形如：tdsql-ow728lmc。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeDBEncryptAttributes返回参数结构体
    public struct DescribeDBEncryptAttributesResponse: TCResponseModel {
        /// 是否启用加密，1-已开启；0-未开启。
        public let encryptStatus: Int64

        /// DEK密钥
        public let cipherText: String

        /// DEK密钥过期日期。
        public let expireDate: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case encryptStatus = "EncryptStatus"
            case cipherText = "CipherText"
            case expireDate = "ExpireDate"
            case requestId = "RequestId"
        }
    }

    /// 查询实例数据加密状态
    ///
    /// 本接口(DescribeDBEncryptAttributes)用于查询实例数据加密状态。
    @inlinable
    public func describeDBEncryptAttributes(_ input: DescribeDBEncryptAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBEncryptAttributesResponse> {
        self.client.execute(action: "DescribeDBEncryptAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例数据加密状态
    ///
    /// 本接口(DescribeDBEncryptAttributes)用于查询实例数据加密状态。
    @inlinable
    public func describeDBEncryptAttributes(_ input: DescribeDBEncryptAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBEncryptAttributesResponse {
        try await self.client.execute(action: "DescribeDBEncryptAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例数据加密状态
    ///
    /// 本接口(DescribeDBEncryptAttributes)用于查询实例数据加密状态。
    @inlinable
    public func describeDBEncryptAttributes(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBEncryptAttributesResponse> {
        self.describeDBEncryptAttributes(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例数据加密状态
    ///
    /// 本接口(DescribeDBEncryptAttributes)用于查询实例数据加密状态。
    @inlinable
    public func describeDBEncryptAttributes(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBEncryptAttributesResponse {
        try await self.describeDBEncryptAttributes(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
