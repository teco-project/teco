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

extension Clb {
    /// RegisterTargetGroupInstances请求参数结构体
    public struct RegisterTargetGroupInstancesRequest: TCRequestModel {
        /// 目标组ID
        public let targetGroupId: String
        
        /// 服务器实例数组
        public let targetGroupInstances: [TargetGroupInstance]
        
        public init (targetGroupId: String, targetGroupInstances: [TargetGroupInstance]) {
            self.targetGroupId = targetGroupId
            self.targetGroupInstances = targetGroupInstances
        }
        
        enum CodingKeys: String, CodingKey {
            case targetGroupId = "TargetGroupId"
            case targetGroupInstances = "TargetGroupInstances"
        }
    }
    
    /// RegisterTargetGroupInstances返回参数结构体
    public struct RegisterTargetGroupInstancesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 注册服务器到目标组
    ///
    /// 注册服务器到目标组。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func registerTargetGroupInstances(_ input: RegisterTargetGroupInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RegisterTargetGroupInstancesResponse > {
        self.client.execute(action: "RegisterTargetGroupInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 注册服务器到目标组
    ///
    /// 注册服务器到目标组。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func registerTargetGroupInstances(_ input: RegisterTargetGroupInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RegisterTargetGroupInstancesResponse {
        try await self.client.execute(action: "RegisterTargetGroupInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
