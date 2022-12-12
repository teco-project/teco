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

extension Cr {
    /// DescribeFileModel请求参数结构体
    public struct DescribeFileModelRequest: TCRequestModel {
        /// 模块名。默认值（固定）：AiApi
        public let module: String
        
        /// 操作名。默认值（固定）：DescribeFileModel
        public let operation: String
        
        /// 模板文件类型，输入input，停拨stop
        public let fileType: String
        
        /// 任务ID，二者必填一个
        public let botId: String?
        
        /// 任务名称，二者必填一个
        public let botName: String?
        
        public init (module: String, operation: String, fileType: String, botId: String? = nil, botName: String? = nil) {
            self.module = module
            self.operation = operation
            self.fileType = fileType
            self.botId = botId
            self.botName = botName
        }
        
        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case fileType = "FileType"
            case botId = "BotId"
            case botName = "BotName"
        }
    }
    
    /// DescribeFileModel返回参数结构体
    public struct DescribeFileModelResponse: TCResponseModel {
        /// 模板下载链接
        public let cosUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case cosUrl = "CosUrl"
            case requestId = "RequestId"
        }
    }
    
    /// 查询机器人文件模板
    @inlinable
    public func describeFileModel(_ input: DescribeFileModelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFileModelResponse > {
        self.client.execute(action: "DescribeFileModel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询机器人文件模板
    @inlinable
    public func describeFileModel(_ input: DescribeFileModelRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFileModelResponse {
        try await self.client.execute(action: "DescribeFileModel", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
