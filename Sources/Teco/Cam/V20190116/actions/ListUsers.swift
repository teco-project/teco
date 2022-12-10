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

extension Cam {
    /// 拉取子用户
    ///
    /// 拉取子用户
    @inlinable
    public func listUsers(_ input: ListUsersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListUsersResponse > {
        self.client.execute(action: "ListUsers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 拉取子用户
    ///
    /// 拉取子用户
    @inlinable
    public func listUsers(_ input: ListUsersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersResponse {
        try await self.client.execute(action: "ListUsers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListUsers请求参数结构体
    public struct ListUsersRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// ListUsers返回参数结构体
    public struct ListUsersResponse: TCResponseModel {
        /// 子用户信息
        public let data: [SubAccountInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}