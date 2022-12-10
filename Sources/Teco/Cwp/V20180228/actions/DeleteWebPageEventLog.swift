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
    /// 删除事件记录
    ///
    /// 网站防篡改-删除事件记录
    @inlinable
    public func deleteWebPageEventLog(_ input: DeleteWebPageEventLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteWebPageEventLogResponse > {
        self.client.execute(action: "DeleteWebPageEventLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除事件记录
    ///
    /// 网站防篡改-删除事件记录
    @inlinable
    public func deleteWebPageEventLog(_ input: DeleteWebPageEventLogRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteWebPageEventLogResponse {
        try await self.client.execute(action: "DeleteWebPageEventLog", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteWebPageEventLog请求参数结构体
    public struct DeleteWebPageEventLogRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// DeleteWebPageEventLog返回参数结构体
    public struct DeleteWebPageEventLogResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
