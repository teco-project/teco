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

extension Vpc {
    /// 修改辅助CIDR
    ///
    /// 本接口(ModifyAssistantCidr)用于批量修改辅助CIDR，支持新增和删除。
    @inlinable
    public func modifyAssistantCidr(_ input: ModifyAssistantCidrRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAssistantCidrResponse > {
        self.client.execute(action: "ModifyAssistantCidr", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改辅助CIDR
    ///
    /// 本接口(ModifyAssistantCidr)用于批量修改辅助CIDR，支持新增和删除。
    @inlinable
    public func modifyAssistantCidr(_ input: ModifyAssistantCidrRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAssistantCidrResponse {
        try await self.client.execute(action: "ModifyAssistantCidr", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAssistantCidr请求参数结构体
    public struct ModifyAssistantCidrRequest: TCRequestModel {
        /// `VPC`实例`ID`。形如：`vpc-6v2ht8q5`
        public let vpcId: String
        
        /// 待添加的辅助CIDR。CIDR数组，格式如["10.0.0.0/16", "172.16.0.0/16"]，入参NewCidrBlocks和OldCidrBlocks至少需要其一。
        public let newCidrBlocks: [String]?
        
        /// 待删除的辅助CIDR。CIDR数组，格式如["10.0.0.0/16", "172.16.0.0/16"]，入参NewCidrBlocks和OldCidrBlocks至少需要其一。
        public let oldCidrBlocks: [String]?
        
        public init (vpcId: String, newCidrBlocks: [String]?, oldCidrBlocks: [String]?) {
            self.vpcId = vpcId
            self.newCidrBlocks = newCidrBlocks
            self.oldCidrBlocks = oldCidrBlocks
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case newCidrBlocks = "NewCidrBlocks"
            case oldCidrBlocks = "OldCidrBlocks"
        }
    }
    
    /// ModifyAssistantCidr返回参数结构体
    public struct ModifyAssistantCidrResponse: TCResponseModel {
        /// 辅助CIDR数组。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let assistantCidrSet: [AssistantCidr]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case assistantCidrSet = "AssistantCidrSet"
            case requestId = "RequestId"
        }
    }
}