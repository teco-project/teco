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

extension Clb {
    /// 规则关联目标组
    ///
    /// 本接口(AssociateTargetGroups)用来将目标组绑定到负载均衡的监听器（四层协议）或转发规则（七层协议）上。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func associateTargetGroups(_ input: AssociateTargetGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AssociateTargetGroupsResponse > {
        self.client.execute(action: "AssociateTargetGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 规则关联目标组
    ///
    /// 本接口(AssociateTargetGroups)用来将目标组绑定到负载均衡的监听器（四层协议）或转发规则（七层协议）上。
    /// 本接口为异步接口，本接口返回成功后需以返回的 RequestID 为入参，调用 DescribeTaskStatus 接口查询本次任务是否成功。
    @inlinable
    public func associateTargetGroups(_ input: AssociateTargetGroupsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateTargetGroupsResponse {
        try await self.client.execute(action: "AssociateTargetGroups", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AssociateTargetGroups请求参数结构体
    public struct AssociateTargetGroupsRequest: TCRequestModel {
        /// 绑定的关系数组。
        public let associations: [TargetGroupAssociation]
        
        public init (associations: [TargetGroupAssociation]) {
            self.associations = associations
        }
        
        enum CodingKeys: String, CodingKey {
            case associations = "Associations"
        }
    }
    
    /// AssociateTargetGroups返回参数结构体
    public struct AssociateTargetGroupsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}