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

extension Cloudstudio {
    /// 全量修改自定义模板，不忽略空
    @inlinable
    public func modifyCustomizeTemplatesFullById(_ input: ModifyCustomizeTemplatesFullByIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyCustomizeTemplatesFullByIdResponse > {
        self.client.execute(action: "ModifyCustomizeTemplatesFullById", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 全量修改自定义模板，不忽略空
    @inlinable
    public func modifyCustomizeTemplatesFullById(_ input: ModifyCustomizeTemplatesFullByIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCustomizeTemplatesFullByIdResponse {
        try await self.client.execute(action: "ModifyCustomizeTemplatesFullById", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyCustomizeTemplatesFullById请求参数结构体
    public struct ModifyCustomizeTemplatesFullByIdRequest: TCRequestModel {
        /// 用户所属组
        public let cloudStudioSessionTeam: String
        
        /// 模板ID
        public let id: Int64
        
        /// 自定义模板参数
        public let userDefinedTemplateParams: UserDefinedTemplateParams
        
        public init (cloudStudioSessionTeam: String, id: Int64, userDefinedTemplateParams: UserDefinedTemplateParams) {
            self.cloudStudioSessionTeam = cloudStudioSessionTeam
            self.id = id
            self.userDefinedTemplateParams = userDefinedTemplateParams
        }
        
        enum CodingKeys: String, CodingKey {
            case cloudStudioSessionTeam = "CloudStudioSessionTeam"
            case id = "Id"
            case userDefinedTemplateParams = "UserDefinedTemplateParams"
        }
    }
    
    /// ModifyCustomizeTemplatesFullById返回参数结构体
    public struct ModifyCustomizeTemplatesFullByIdResponse: TCResponseModel {
        /// 自定义模板返回值
        public let data: WorkspaceTemplateInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
}
