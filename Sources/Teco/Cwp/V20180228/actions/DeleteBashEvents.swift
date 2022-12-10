//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cwp {
    /// 删除高危命令事件
    ///
    /// 根据Ids删除高危命令事件
    @inlinable
    public func deleteBashEvents(_ input: DeleteBashEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteBashEventsResponse > {
        self.client.execute(action: "DeleteBashEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除高危命令事件
    ///
    /// 根据Ids删除高危命令事件
    @inlinable
    public func deleteBashEvents(_ input: DeleteBashEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteBashEventsResponse {
        try await self.client.execute(action: "DeleteBashEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteBashEvents请求参数结构体
    public struct DeleteBashEventsRequest: TCRequestModel {
        /// ID数组，最大100条。
        public let ids: [UInt64]
        
        public init (ids: [UInt64]) {
            self.ids = ids
        }
        
        enum CodingKeys: String, CodingKey {
            case ids = "Ids"
        }
    }
    
    /// DeleteBashEvents返回参数结构体
    public struct DeleteBashEventsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
