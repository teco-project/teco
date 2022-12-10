//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iotcloud {
    /// 获取任务详情
    ///
    /// 本接口（DescribeTask）用于查询一个已创建任务的详情，任务保留一个月 
    @inlinable
    public func describeTask(_ input: DescribeTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeTaskResponse > {
        self.client.execute(action: "DescribeTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取任务详情
    ///
    /// 本接口（DescribeTask）用于查询一个已创建任务的详情，任务保留一个月 
    @inlinable
    public func describeTask(_ input: DescribeTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskResponse {
        try await self.client.execute(action: "DescribeTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeTask请求参数结构体
    public struct DescribeTaskRequest: TCRequestModel {
        /// 任务ID
        public let id: String
        
        public init (id: String) {
            self.id = id
        }
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }
    
    /// DescribeTask返回参数结构体
    public struct DescribeTaskResponse: TCResponseModel {
        /// 任务类型，目前取值为 “UpdateShadow” 或者 “PublishMessage”
        public let type: String
        
        /// 任务 ID
        public let id: String
        
        /// 产品 ID
        public let productId: String
        
        /// 状态。1表示等待处理，2表示调度处理中，3表示已完成，4表示失败，5表示已取消
        public let status: UInt64
        
        /// 任务创建时间，Unix 时间戳
        public let createTime: UInt64
        
        /// 最后任务更新时间，Unix 时间戳
        public let updateTime: UInt64
        
        /// 任务完成时间，Unix 时间戳
        public let doneTime: UInt64
        
        /// 被调度时间，Unix 时间戳
        public let scheduleTime: UInt64
        
        /// 返回的错误码
        public let retCode: UInt64
        
        /// 返回的错误信息
        public let errMsg: String
        
        /// 完成任务的设备比例
        public let percent: UInt64
        
        /// 匹配到的需执行任务的设备数目
        public let allDeviceCnt: UInt64
        
        /// 已完成任务的设备数目
        public let doneDeviceCnt: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case id = "Id"
            case productId = "ProductId"
            case status = "Status"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case doneTime = "DoneTime"
            case scheduleTime = "ScheduleTime"
            case retCode = "RetCode"
            case errMsg = "ErrMsg"
            case percent = "Percent"
            case allDeviceCnt = "AllDeviceCnt"
            case doneDeviceCnt = "DoneDeviceCnt"
            case requestId = "RequestId"
        }
    }
}