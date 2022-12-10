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

extension Ssl {
    /// 重新核验管理人
    ///
    /// 重新核验管理人
    @inlinable
    public func verifyManager(_ input: VerifyManagerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < VerifyManagerResponse > {
        self.client.execute(action: "VerifyManager", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 重新核验管理人
    ///
    /// 重新核验管理人
    @inlinable
    public func verifyManager(_ input: VerifyManagerRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyManagerResponse {
        try await self.client.execute(action: "VerifyManager", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// VerifyManager请求参数结构体
    public struct VerifyManagerRequest: TCRequestModel {
        /// 管理人ID
        public let managerId: Int64
        
        public init (managerId: Int64) {
            self.managerId = managerId
        }
        
        enum CodingKeys: String, CodingKey {
            case managerId = "ManagerId"
        }
    }
    
    /// VerifyManager返回参数结构体
    public struct VerifyManagerResponse: TCResponseModel {
        /// 管理人ID
        public let managerId: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case managerId = "ManagerId"
            case requestId = "RequestId"
        }
    }
}