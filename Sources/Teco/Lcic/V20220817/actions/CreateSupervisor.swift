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

extension Lcic {
    /// 创建巡课
    @inlinable
    public func createSupervisor(_ input: CreateSupervisorRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSupervisorResponse > {
        self.client.execute(action: "CreateSupervisor", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建巡课
    @inlinable
    public func createSupervisor(_ input: CreateSupervisorRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSupervisorResponse {
        try await self.client.execute(action: "CreateSupervisor", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateSupervisor请求参数结构体
    public struct CreateSupervisorRequest: TCRequestModel {
        public init () {
        }
    }
    
    /// CreateSupervisor返回参数结构体
    public struct CreateSupervisorResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
