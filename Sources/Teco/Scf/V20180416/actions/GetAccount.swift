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

extension Scf {
    /// 获取账户信息
    ///
    /// 获取账户信息
    @inlinable
    public func getAccount(_ input: GetAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetAccountResponse > {
        self.client.execute(action: "GetAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取账户信息
    ///
    /// 获取账户信息
    @inlinable
    public func getAccount(_ input: GetAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAccountResponse {
        try await self.client.execute(action: "GetAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetAccount请求参数结构体
    public struct GetAccountRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// GetAccount返回参数结构体
    public struct GetAccountResponse: TCResponseModel {
        /// 命名空间已使用的信息
        public let accountUsage: UsageInfo
        
        /// 命名空间限制的信息
        public let accountLimit: LimitsInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case accountUsage = "AccountUsage"
            case accountLimit = "AccountLimit"
            case requestId = "RequestId"
        }
    }
}