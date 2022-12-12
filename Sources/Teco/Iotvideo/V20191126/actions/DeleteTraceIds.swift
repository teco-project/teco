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

extension Iotvideo {
    /// DeleteTraceIds请求参数结构体
    public struct DeleteTraceIdsRequest: TCRequestModel {
        /// 设备TID列表
        public let tids: [String]
        
        public init (tids: [String]) {
            self.tids = tids
        }
        
        enum CodingKeys: String, CodingKey {
            case tids = "Tids"
        }
    }
    
    /// DeleteTraceIds返回参数结构体
    public struct DeleteTraceIdsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 将设备从白名单删除
    ///
    /// 本接口（DeleteTraceIds）用于将设备从日志跟踪白名单中删除，该接口可批量操作，最多支持同时操作100台设备。
    @inlinable
    public func deleteTraceIds(_ input: DeleteTraceIdsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteTraceIdsResponse > {
        self.client.execute(action: "DeleteTraceIds", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 将设备从白名单删除
    ///
    /// 本接口（DeleteTraceIds）用于将设备从日志跟踪白名单中删除，该接口可批量操作，最多支持同时操作100台设备。
    @inlinable
    public func deleteTraceIds(_ input: DeleteTraceIdsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTraceIdsResponse {
        try await self.client.execute(action: "DeleteTraceIds", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
