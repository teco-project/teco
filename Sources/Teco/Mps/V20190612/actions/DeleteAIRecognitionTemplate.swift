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

extension Mps {
    /// 删除内容识别模板
    ///
    /// 删除用户自定义内容识别模板。
    @inlinable
    public func deleteAIRecognitionTemplate(_ input: DeleteAIRecognitionTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAIRecognitionTemplateResponse > {
        self.client.execute(action: "DeleteAIRecognitionTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除内容识别模板
    ///
    /// 删除用户自定义内容识别模板。
    @inlinable
    public func deleteAIRecognitionTemplate(_ input: DeleteAIRecognitionTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAIRecognitionTemplateResponse {
        try await self.client.execute(action: "DeleteAIRecognitionTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteAIRecognitionTemplate请求参数结构体
    public struct DeleteAIRecognitionTemplateRequest: TCRequestModel {
        /// 视频内容识别模板唯一标识。
        public let definition: Int64
        
        public init (definition: Int64) {
            self.definition = definition
        }
        
        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
        }
    }
    
    /// DeleteAIRecognitionTemplate返回参数结构体
    public struct DeleteAIRecognitionTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}