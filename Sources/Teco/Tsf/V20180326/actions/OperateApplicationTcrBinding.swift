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

extension Tsf {
    /// 绑定解绑tcr仓库
    @inlinable
    public func operateApplicationTcrBinding(_ input: OperateApplicationTcrBindingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < OperateApplicationTcrBindingResponse > {
        self.client.execute(action: "OperateApplicationTcrBinding", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 绑定解绑tcr仓库
    @inlinable
    public func operateApplicationTcrBinding(_ input: OperateApplicationTcrBindingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OperateApplicationTcrBindingResponse {
        try await self.client.execute(action: "OperateApplicationTcrBinding", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// OperateApplicationTcrBinding请求参数结构体
    public struct OperateApplicationTcrBindingRequest: TCRequestModel {
        /// bind 或 unbind
        public let command: String?
        
        /// 应用id
        public let applicationId: String?
        
        /// TcrRepoInfo值
        public let tcrRepoInfo: TcrRepoInfo
        
        public init (command: String?, applicationId: String?, tcrRepoInfo: TcrRepoInfo) {
            self.command = command
            self.applicationId = applicationId
            self.tcrRepoInfo = tcrRepoInfo
        }
        
        enum CodingKeys: String, CodingKey {
            case command = "Command"
            case applicationId = "ApplicationId"
            case tcrRepoInfo = "TcrRepoInfo"
        }
    }
    
    /// OperateApplicationTcrBinding返回参数结构体
    public struct OperateApplicationTcrBindingResponse: TCResponseModel {
        /// 是否成功
        public let result: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
