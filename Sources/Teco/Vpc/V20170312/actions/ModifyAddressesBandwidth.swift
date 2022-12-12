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

@_exported import struct Foundation.Date

extension Vpc {
    /// ModifyAddressesBandwidth请求参数结构体
    public struct ModifyAddressesBandwidthRequest: TCRequestModel {
        /// EIP唯一标识ID列表，形如'eip-xxxx'
        public let addressIds: [String]
        
        /// 调整带宽目标值
        public let internetMaxBandwidthOut: Int64
        
        /// 包月带宽起始时间(已废弃，输入无效)
        public let startTime: Date?
        
        /// 包月带宽结束时间(已废弃，输入无效)
        public let endTime: Date?
        
        public init (addressIds: [String], internetMaxBandwidthOut: Int64, startTime: Date? = nil, endTime: Date? = nil) {
            self.addressIds = addressIds
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
            self.startTime = startTime
            self.endTime = endTime
        }
        
        enum CodingKeys: String, CodingKey {
            case addressIds = "AddressIds"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }
    
    /// ModifyAddressesBandwidth返回参数结构体
    public struct ModifyAddressesBandwidthResponse: TCResponseModel {
        /// 异步任务TaskId。可以使用[DescribeTaskResult](https://cloud.tencent.com/document/api/215/36271)接口查询任务状态。
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 调整弹性公网IP带宽
    ///
    /// 本接口（ModifyAddressesBandwidth）用于调整[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)(简称EIP)带宽，支持后付费EIP, 预付费EIP和带宽包EIP
    @inlinable
    public func modifyAddressesBandwidth(_ input: ModifyAddressesBandwidthRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAddressesBandwidthResponse > {
        self.client.execute(action: "ModifyAddressesBandwidth", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 调整弹性公网IP带宽
    ///
    /// 本接口（ModifyAddressesBandwidth）用于调整[弹性公网IP](https://cloud.tencent.com/document/product/213/1941)(简称EIP)带宽，支持后付费EIP, 预付费EIP和带宽包EIP
    @inlinable
    public func modifyAddressesBandwidth(_ input: ModifyAddressesBandwidthRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAddressesBandwidthResponse {
        try await self.client.execute(action: "ModifyAddressesBandwidth", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
