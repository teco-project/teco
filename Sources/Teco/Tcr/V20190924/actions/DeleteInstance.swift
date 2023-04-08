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

extension Tcr {
    /// DeleteInstance请求参数结构体
    public struct DeleteInstanceRequest: TCRequestModel {
        /// 实例id
        public let registryId: String

        /// 是否删除存储桶，默认为false
        public let deleteBucket: Bool?

        /// 是否dryRun模式，缺省值：false
        public let dryRun: Bool?

        public init(registryId: String, deleteBucket: Bool? = nil, dryRun: Bool? = nil) {
            self.registryId = registryId
            self.deleteBucket = deleteBucket
            self.dryRun = dryRun
        }

        enum CodingKeys: String, CodingKey {
            case registryId = "RegistryId"
            case deleteBucket = "DeleteBucket"
            case dryRun = "DryRun"
        }
    }

    /// DeleteInstance返回参数结构体
    public struct DeleteInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除实例
    ///
    /// 删除镜像仓库企业版实例
    @inlinable @discardableResult
    public func deleteInstance(_ input: DeleteInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceResponse> {
        self.client.execute(action: "DeleteInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例
    ///
    /// 删除镜像仓库企业版实例
    @inlinable @discardableResult
    public func deleteInstance(_ input: DeleteInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceResponse {
        try await self.client.execute(action: "DeleteInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实例
    ///
    /// 删除镜像仓库企业版实例
    @inlinable @discardableResult
    public func deleteInstance(registryId: String, deleteBucket: Bool? = nil, dryRun: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceResponse> {
        self.deleteInstance(.init(registryId: registryId, deleteBucket: deleteBucket, dryRun: dryRun), region: region, logger: logger, on: eventLoop)
    }

    /// 删除实例
    ///
    /// 删除镜像仓库企业版实例
    @inlinable @discardableResult
    public func deleteInstance(registryId: String, deleteBucket: Bool? = nil, dryRun: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceResponse {
        try await self.deleteInstance(.init(registryId: registryId, deleteBucket: deleteBucket, dryRun: dryRun), region: region, logger: logger, on: eventLoop)
    }
}
