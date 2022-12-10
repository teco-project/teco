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

extension Cvm {
    /// 修改实例启动模板默认版本
    ///
    /// 本接口（ModifyLaunchTemplateDefaultVersion）用于修改实例启动模板默认版本。
    @inlinable
    public func modifyLaunchTemplateDefaultVersion(_ input: ModifyLaunchTemplateDefaultVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyLaunchTemplateDefaultVersionResponse > {
        self.client.execute(action: "ModifyLaunchTemplateDefaultVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改实例启动模板默认版本
    ///
    /// 本接口（ModifyLaunchTemplateDefaultVersion）用于修改实例启动模板默认版本。
    @inlinable
    public func modifyLaunchTemplateDefaultVersion(_ input: ModifyLaunchTemplateDefaultVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLaunchTemplateDefaultVersionResponse {
        try await self.client.execute(action: "ModifyLaunchTemplateDefaultVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyLaunchTemplateDefaultVersion请求参数结构体
    public struct ModifyLaunchTemplateDefaultVersionRequest: TCRequestModel {
        /// 启动模板ID。
        public let launchTemplateId: String
        
        /// 待设置的默认版本号。
        public let defaultVersion: Int64
        
        public init (launchTemplateId: String, defaultVersion: Int64) {
            self.launchTemplateId = launchTemplateId
            self.defaultVersion = defaultVersion
        }
        
        enum CodingKeys: String, CodingKey {
            case launchTemplateId = "LaunchTemplateId"
            case defaultVersion = "DefaultVersion"
        }
    }
    
    /// ModifyLaunchTemplateDefaultVersion返回参数结构体
    public struct ModifyLaunchTemplateDefaultVersionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
