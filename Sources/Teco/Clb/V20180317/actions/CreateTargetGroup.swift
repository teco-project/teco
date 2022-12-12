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
    /// CreateTargetGroup请求参数结构体
    public struct CreateTargetGroupRequest: TCRequestModel {
        /// 目标组名称，限定50个字符
        public let targetGroupName: String?
        
        /// 目标组的vpcid属性，不填则使用默认vpc
        public let vpcId: String?
        
        /// 目标组的默认端口， 后续添加服务器时可使用该默认端口
        public let port: UInt64?
        
        /// 目标组绑定的后端服务器
        public let targetGroupInstances: [TargetGroupInstance]?
        
        public init (targetGroupName: String? = nil, vpcId: String? = nil, port: UInt64? = nil, targetGroupInstances: [TargetGroupInstance]? = nil) {
            self.targetGroupName = targetGroupName
            self.vpcId = vpcId
            self.port = port
            self.targetGroupInstances = targetGroupInstances
        }
        
        enum CodingKeys: String, CodingKey {
            case targetGroupName = "TargetGroupName"
            case vpcId = "VpcId"
            case port = "Port"
            case targetGroupInstances = "TargetGroupInstances"
        }
    }
    
    /// CreateTargetGroup返回参数结构体
    public struct CreateTargetGroupResponse: TCResponseModel {
        /// 创建目标组后生成的id
        public let targetGroupId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case targetGroupId = "TargetGroupId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建目标组
    ///
    /// 创建目标组。该功能正在内测中，如需使用，请通过[工单申请](https://console.cloud.tencent.com/workorder/category?level1_id=6&level2_id=163&source=0&data_title=%E8%B4%9F%E8%BD%BD%E5%9D%87%E8%A1%A1%20LB&step=1)。
    @inlinable
    public func createTargetGroup(_ input: CreateTargetGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateTargetGroupResponse > {
        self.client.execute(action: "CreateTargetGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建目标组
    ///
    /// 创建目标组。该功能正在内测中，如需使用，请通过[工单申请](https://console.cloud.tencent.com/workorder/category?level1_id=6&level2_id=163&source=0&data_title=%E8%B4%9F%E8%BD%BD%E5%9D%87%E8%A1%A1%20LB&step=1)。
    @inlinable
    public func createTargetGroup(_ input: CreateTargetGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTargetGroupResponse {
        try await self.client.execute(action: "CreateTargetGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
