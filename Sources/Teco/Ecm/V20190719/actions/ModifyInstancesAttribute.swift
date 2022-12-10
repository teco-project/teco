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

extension Ecm {
    /// 修改实例属性
    ///
    /// 修改实例的属性。
    @inlinable
    public func modifyInstancesAttribute(_ input: ModifyInstancesAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyInstancesAttributeResponse > {
        self.client.execute(action: "ModifyInstancesAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改实例属性
    ///
    /// 修改实例的属性。
    @inlinable
    public func modifyInstancesAttribute(_ input: ModifyInstancesAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstancesAttributeResponse {
        try await self.client.execute(action: "ModifyInstancesAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyInstancesAttribute请求参数结构体
    public struct ModifyInstancesAttributeRequest: TCRequestModel {
        /// 待修改的实例ID列表。在单次请求的过程中，请求实例数上限为100。
        public let instanceIdSet: [String]
        
        /// 修改成功后显示的实例名称，不得超过60个字符，不传则名称显示为空。
        public let instanceName: String?
        
        /// 指定实例的安全组Id列表，子机将重新关联指定列表的安全组，原本关联的安全组会被解绑。限制不超过5个。
        public let securityGroups: [String]?
        
        public init (instanceIdSet: [String], instanceName: String?, securityGroups: [String]?) {
            self.instanceIdSet = instanceIdSet
            self.instanceName = instanceName
            self.securityGroups = securityGroups
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
            case instanceName = "InstanceName"
            case securityGroups = "SecurityGroups"
        }
    }
    
    /// ModifyInstancesAttribute返回参数结构体
    public struct ModifyInstancesAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}