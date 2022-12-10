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

extension Redis {
    /// 删除参数模板
    @inlinable
    public func deleteParamTemplate(_ input: DeleteParamTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteParamTemplateResponse > {
        self.client.execute(action: "DeleteParamTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除参数模板
    @inlinable
    public func deleteParamTemplate(_ input: DeleteParamTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteParamTemplateResponse {
        try await self.client.execute(action: "DeleteParamTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteParamTemplate请求参数结构体
    public struct DeleteParamTemplateRequest: TCRequestModel {
        /// 参数模板 ID。
        public let templateId: String
        
        public init (templateId: String) {
            self.templateId = templateId
        }
        
        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }
    
    /// DeleteParamTemplate返回参数结构体
    public struct DeleteParamTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
