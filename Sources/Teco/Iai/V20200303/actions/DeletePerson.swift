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

extension Iai {
    /// 删除人员
    ///
    /// 删除该人员信息，此操作会导致所有人员库均删除此人员。同时，该人员的所有人脸信息将被删除。
    @inlinable
    public func deletePerson(_ input: DeletePersonRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeletePersonResponse > {
        self.client.execute(action: "DeletePerson", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除人员
    ///
    /// 删除该人员信息，此操作会导致所有人员库均删除此人员。同时，该人员的所有人脸信息将被删除。
    @inlinable
    public func deletePerson(_ input: DeletePersonRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePersonResponse {
        try await self.client.execute(action: "DeletePerson", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeletePerson请求参数结构体
    public struct DeletePersonRequest: TCRequestModel {
        /// 人员ID，取值为创建人员接口中的PersonId
        public let personId: String
        
        public init (personId: String) {
            self.personId = personId
        }
        
        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
        }
    }
    
    /// DeletePerson返回参数结构体
    public struct DeletePersonResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
