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

extension Gme {
    /// 新增自定义送检用户
    ///
    /// 新增自定义送检用户
    @inlinable
    public func createScanUser(_ input: CreateScanUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateScanUserResponse > {
        self.client.execute(action: "CreateScanUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 新增自定义送检用户
    ///
    /// 新增自定义送检用户
    @inlinable
    public func createScanUser(_ input: CreateScanUserRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScanUserResponse {
        try await self.client.execute(action: "CreateScanUser", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateScanUser请求参数结构体
    public struct CreateScanUserRequest: TCRequestModel {
        /// 应用ID，登录控制台 - 服务管理创建应用得到的AppID
        public let bizId: UInt64
        
        /// 需要新增送检的用户号。示例：1234
        public let userId: UInt64?
        
        public init (bizId: UInt64, userId: UInt64?) {
            self.bizId = bizId
            self.userId = userId
        }
        
        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case userId = "UserId"
        }
    }
    
    /// CreateScanUser返回参数结构体
    public struct CreateScanUserResponse: TCResponseModel {
        /// 返回结果码
        public let errorCode: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case requestId = "RequestId"
        }
    }
}