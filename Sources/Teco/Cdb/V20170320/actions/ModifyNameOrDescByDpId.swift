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

extension Cdb {
    /// ModifyNameOrDescByDpId请求参数结构体
    public struct ModifyNameOrDescByDpIdRequest: TCRequestModel {
        /// 置放群组 ID。
        public let deployGroupId: String
        
        /// 置放群组名称，最长不能超过60个字符。置放群组名和置放群组描述不能都为空。
        public let deployGroupName: String?
        
        /// 置放群组描述，最长不能超过200个字符。置放群组名和置放群组描述不能都为空。
        public let description: String?
        
        public init (deployGroupId: String, deployGroupName: String? = nil, description: String? = nil) {
            self.deployGroupId = deployGroupId
            self.deployGroupName = deployGroupName
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case deployGroupId = "DeployGroupId"
            case deployGroupName = "DeployGroupName"
            case description = "Description"
        }
    }
    
    /// ModifyNameOrDescByDpId返回参数结构体
    public struct ModifyNameOrDescByDpIdResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改置放群组的名称或者描述
    @inlinable
    public func modifyNameOrDescByDpId(_ input: ModifyNameOrDescByDpIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyNameOrDescByDpIdResponse > {
        self.client.execute(action: "ModifyNameOrDescByDpId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改置放群组的名称或者描述
    @inlinable
    public func modifyNameOrDescByDpId(_ input: ModifyNameOrDescByDpIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNameOrDescByDpIdResponse {
        try await self.client.execute(action: "ModifyNameOrDescByDpId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
