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

extension Iotcloud {
    /// DescribeMultiDevices请求参数结构体
    public struct DescribeMultiDevicesRequest: TCRequestModel {
        /// 产品 ID，创建产品时腾讯云为用户分配全局唯一的 ID
        public let productId: String
        
        /// 任务 ID，由批量创建设备接口返回
        public let taskId: String
        
        /// 分页偏移
        public let offset: UInt64
        
        /// 分页大小，每页返回的设备个数
        public let limit: UInt64
        
        public init (productId: String, taskId: String, offset: UInt64, limit: UInt64) {
            self.productId = productId
            self.taskId = taskId
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case taskId = "TaskId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeMultiDevices返回参数结构体
    public struct DescribeMultiDevicesResponse: TCResponseModel {
        /// 任务 ID，由批量创建设备接口返回
        public let taskId: String
        
        /// 设备详细信息列表
        public let devicesInfo: [MultiDevicesInfo]
        
        /// 该任务创建设备的总数
        public let totalDevNum: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case devicesInfo = "DevicesInfo"
            case totalDevNum = "TotalDevNum"
            case requestId = "RequestId"
        }
    }
    
    /// 获取创建多设备结果
    ///
    /// 本接口（DescribeMultiDevices）用于查询批量创建设备的执行结果。
    @inlinable
    public func describeMultiDevices(_ input: DescribeMultiDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMultiDevicesResponse > {
        self.client.execute(action: "DescribeMultiDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取创建多设备结果
    ///
    /// 本接口（DescribeMultiDevices）用于查询批量创建设备的执行结果。
    @inlinable
    public func describeMultiDevices(_ input: DescribeMultiDevicesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMultiDevicesResponse {
        try await self.client.execute(action: "DescribeMultiDevices", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
