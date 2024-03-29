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

extension Dasb {
    /// DeleteCmdTemplates请求参数结构体
    public struct DeleteCmdTemplatesRequest: TCRequest {
        /// 待删除的ID集合
        public let idSet: [UInt64]

        public init(idSet: [UInt64]) {
            self.idSet = idSet
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
        }
    }

    /// DeleteCmdTemplates返回参数结构体
    public struct DeleteCmdTemplatesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除高危命令模板
    @inlinable @discardableResult
    public func deleteCmdTemplates(_ input: DeleteCmdTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCmdTemplatesResponse> {
        self.client.execute(action: "DeleteCmdTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除高危命令模板
    @inlinable @discardableResult
    public func deleteCmdTemplates(_ input: DeleteCmdTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCmdTemplatesResponse {
        try await self.client.execute(action: "DeleteCmdTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除高危命令模板
    @inlinable @discardableResult
    public func deleteCmdTemplates(idSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCmdTemplatesResponse> {
        self.deleteCmdTemplates(.init(idSet: idSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除高危命令模板
    @inlinable @discardableResult
    public func deleteCmdTemplates(idSet: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCmdTemplatesResponse {
        try await self.deleteCmdTemplates(.init(idSet: idSet), region: region, logger: logger, on: eventLoop)
    }
}
