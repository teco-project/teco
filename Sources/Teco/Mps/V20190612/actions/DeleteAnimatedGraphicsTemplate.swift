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
    /// 删除转动图模板
    ///
    /// 删除用户自定义转动图模板。
    @inlinable
    public func deleteAnimatedGraphicsTemplate(_ input: DeleteAnimatedGraphicsTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteAnimatedGraphicsTemplateResponse > {
        self.client.execute(action: "DeleteAnimatedGraphicsTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除转动图模板
    ///
    /// 删除用户自定义转动图模板。
    @inlinable
    public func deleteAnimatedGraphicsTemplate(_ input: DeleteAnimatedGraphicsTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteAnimatedGraphicsTemplateResponse {
        try await self.client.execute(action: "DeleteAnimatedGraphicsTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteAnimatedGraphicsTemplate请求参数结构体
    public struct DeleteAnimatedGraphicsTemplateRequest: TCRequestModel {
        /// 转动图模板唯一标识。
        public let definition: UInt64
        
        public init (definition: UInt64) {
            self.definition = definition
        }
        
        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
        }
    }
    
    /// DeleteAnimatedGraphicsTemplate返回参数结构体
    public struct DeleteAnimatedGraphicsTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}