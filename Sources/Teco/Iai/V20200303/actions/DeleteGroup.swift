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

extension Iai {
    /// 删除人员库
    ///
    /// 删除该人员库及包含的所有的人员。同时，人员对应的所有人脸信息将被删除。若某人员同时存在多个人员库中，该人员不会被删除，但属于该人员库中的自定义描述字段信息会被删除，属于其他人员库的自定义描述字段信息不受影响。
    @inlinable
    public func deleteGroup(_ input: DeleteGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteGroupResponse > {
        self.client.execute(action: "DeleteGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除人员库
    ///
    /// 删除该人员库及包含的所有的人员。同时，人员对应的所有人脸信息将被删除。若某人员同时存在多个人员库中，该人员不会被删除，但属于该人员库中的自定义描述字段信息会被删除，属于其他人员库的自定义描述字段信息不受影响。
    @inlinable
    public func deleteGroup(_ input: DeleteGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteGroupResponse {
        try await self.client.execute(action: "DeleteGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteGroup请求参数结构体
    public struct DeleteGroupRequest: TCRequestModel {
        /// 人员库ID，取值为创建人员库接口中的GroupId
        public let groupId: String
        
        public init (groupId: String) {
            self.groupId = groupId
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }
    
    /// DeleteGroup返回参数结构体
    public struct DeleteGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}