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

extension Dlc {
    /// ModifyWorkGroup请求参数结构体
    public struct ModifyWorkGroupRequest: TCRequestModel {
        /// 工作组Id
        public let workGroupId: Int64
        
        /// 工作组描述
        public let workGroupDescription: String
        
        public init (workGroupId: Int64, workGroupDescription: String) {
            self.workGroupId = workGroupId
            self.workGroupDescription = workGroupDescription
        }
        
        enum CodingKeys: String, CodingKey {
            case workGroupId = "WorkGroupId"
            case workGroupDescription = "WorkGroupDescription"
        }
    }
    
    /// ModifyWorkGroup返回参数结构体
    public struct ModifyWorkGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改工作组信息
    @inlinable
    public func modifyWorkGroup(_ input: ModifyWorkGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyWorkGroupResponse > {
        self.client.execute(action: "ModifyWorkGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改工作组信息
    @inlinable
    public func modifyWorkGroup(_ input: ModifyWorkGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWorkGroupResponse {
        try await self.client.execute(action: "ModifyWorkGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
