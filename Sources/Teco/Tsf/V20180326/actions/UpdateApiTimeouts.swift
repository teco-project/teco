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

extension Tsf {
    /// UpdateApiTimeouts请求参数结构体
    public struct UpdateApiTimeoutsRequest: TCRequestModel {
        /// API ID 列表
        public let apiIds: [String]
        
        /// 开启/禁用，enabled/disabled
        public let usableStatus: String
        
        /// 超时时间，单位毫秒，开启API超时时，必填
        public let timeout: Int64?
        
        public init (apiIds: [String], usableStatus: String, timeout: Int64? = nil) {
            self.apiIds = apiIds
            self.usableStatus = usableStatus
            self.timeout = timeout
        }
        
        enum CodingKeys: String, CodingKey {
            case apiIds = "ApiIds"
            case usableStatus = "UsableStatus"
            case timeout = "Timeout"
        }
    }
    
    /// UpdateApiTimeouts返回参数结构体
    public struct UpdateApiTimeoutsResponse: TCResponseModel {
        /// 是否成功
        public let result: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 更新API超时
    ///
    /// 批量更新API超时
    @inlinable
    public func updateApiTimeouts(_ input: UpdateApiTimeoutsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateApiTimeoutsResponse > {
        self.client.execute(action: "UpdateApiTimeouts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新API超时
    ///
    /// 批量更新API超时
    @inlinable
    public func updateApiTimeouts(_ input: UpdateApiTimeoutsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateApiTimeoutsResponse {
        try await self.client.execute(action: "UpdateApiTimeouts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
