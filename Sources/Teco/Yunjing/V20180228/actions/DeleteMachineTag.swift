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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Yunjing {
    /// DeleteMachineTag请求参数结构体
    public struct DeleteMachineTagRequest: TCRequestModel {
        /// 关联的标签ID
        public let rid: UInt64

        public init(rid: UInt64) {
            self.rid = rid
        }

        enum CodingKeys: String, CodingKey {
            case rid = "Rid"
        }
    }

    /// DeleteMachineTag返回参数结构体
    public struct DeleteMachineTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除服务器关联的标签
    @inlinable @discardableResult
    public func deleteMachineTag(_ input: DeleteMachineTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMachineTagResponse> {
        self.client.execute(action: "DeleteMachineTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除服务器关联的标签
    @inlinable @discardableResult
    public func deleteMachineTag(_ input: DeleteMachineTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMachineTagResponse {
        try await self.client.execute(action: "DeleteMachineTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除服务器关联的标签
    @inlinable @discardableResult
    public func deleteMachineTag(rid: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMachineTagResponse> {
        self.deleteMachineTag(.init(rid: rid), region: region, logger: logger, on: eventLoop)
    }

    /// 删除服务器关联的标签
    @inlinable @discardableResult
    public func deleteMachineTag(rid: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMachineTagResponse {
        try await self.deleteMachineTag(.init(rid: rid), region: region, logger: logger, on: eventLoop)
    }
}
