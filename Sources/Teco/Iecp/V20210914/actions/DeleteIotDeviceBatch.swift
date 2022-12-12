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

extension Iecp {
    /// DeleteIotDeviceBatch请求参数结构体
    public struct DeleteIotDeviceBatchRequest: TCRequestModel {
        /// 无
        public let deviceIDList: [UInt64]
        
        public init (deviceIDList: [UInt64]) {
            self.deviceIDList = deviceIDList
        }
        
        enum CodingKeys: String, CodingKey {
            case deviceIDList = "DeviceIDList"
        }
    }
    
    /// DeleteIotDeviceBatch返回参数结构体
    public struct DeleteIotDeviceBatchResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 批量删除设备
    @inlinable
    public func deleteIotDeviceBatch(_ input: DeleteIotDeviceBatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteIotDeviceBatchResponse > {
        self.client.execute(action: "DeleteIotDeviceBatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量删除设备
    @inlinable
    public func deleteIotDeviceBatch(_ input: DeleteIotDeviceBatchRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteIotDeviceBatchResponse {
        try await self.client.execute(action: "DeleteIotDeviceBatch", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
