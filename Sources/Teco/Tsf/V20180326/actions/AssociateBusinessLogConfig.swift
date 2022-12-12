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
    /// AssociateBusinessLogConfig请求参数结构体
    public struct AssociateBusinessLogConfigRequest: TCRequestModel {
        /// TSF分组ID
        public let groupId: String
        
        /// 日志配置项ID列表
        public let configIdList: [String]?
        
        public init (groupId: String, configIdList: [String]? = nil) {
            self.groupId = groupId
            self.configIdList = configIdList
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case configIdList = "ConfigIdList"
        }
    }
    
    /// AssociateBusinessLogConfig返回参数结构体
    public struct AssociateBusinessLogConfigResponse: TCResponseModel {
        /// 操作结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 关联日志配置项到应用
    @inlinable
    public func associateBusinessLogConfig(_ input: AssociateBusinessLogConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AssociateBusinessLogConfigResponse > {
        self.client.execute(action: "AssociateBusinessLogConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 关联日志配置项到应用
    @inlinable
    public func associateBusinessLogConfig(_ input: AssociateBusinessLogConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AssociateBusinessLogConfigResponse {
        try await self.client.execute(action: "AssociateBusinessLogConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
