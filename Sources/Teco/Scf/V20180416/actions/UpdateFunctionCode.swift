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

extension Scf {
    /// UpdateFunctionCode请求参数结构体
    public struct UpdateFunctionCodeRequest: TCRequestModel {
        /// 要修改的函数名称
        public let functionName: String
        
        /// 函数处理方法名称。名称格式支持“文件名称.函数名称”形式（java 名称格式 包名.类名::方法名），文件名称和函数名称之间以"."隔开，文件名称和函数名称要求以字母开始和结尾，中间允许插入字母、数字、下划线和连接符，文件名称和函数名字的长度要求 2-60 个字符
        public let handler: String?
        
        /// 对象存储桶名称
        public let cosBucketName: String?
        
        /// 对象存储对象路径
        public let cosObjectName: String?
        
        /// 包含函数代码文件及其依赖项的 zip 格式文件，使用该接口时要求将 zip 文件的内容转成 base64 编码，最大支持20M
        public let zipFile: String?
        
        /// 函数所属命名空间
        public let namespace: String?
        
        /// 对象存储的地域，注：北京分为ap-beijing和ap-beijing-1
        public let cosBucketRegion: String?
        
        /// 是否自动安装依赖
        public let installDependency: String?
        
        /// 函数所属环境
        public let envId: String?
        
        /// 在更新时是否同步发布新版本，默认为：FALSE，不发布
        public let publish: String?
        
        /// 函数代码
        public let code: Code?
        
        /// 代码来源方式，支持 ZipFile, Cos, Inline 之一
        public let codeSource: String?
        
        public init (functionName: String, handler: String? = nil, cosBucketName: String? = nil, cosObjectName: String? = nil, zipFile: String? = nil, namespace: String? = nil, cosBucketRegion: String? = nil, installDependency: String? = nil, envId: String? = nil, publish: String? = nil, code: Code? = nil, codeSource: String? = nil) {
            self.functionName = functionName
            self.handler = handler
            self.cosBucketName = cosBucketName
            self.cosObjectName = cosObjectName
            self.zipFile = zipFile
            self.namespace = namespace
            self.cosBucketRegion = cosBucketRegion
            self.installDependency = installDependency
            self.envId = envId
            self.publish = publish
            self.code = code
            self.codeSource = codeSource
        }
        
        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case handler = "Handler"
            case cosBucketName = "CosBucketName"
            case cosObjectName = "CosObjectName"
            case zipFile = "ZipFile"
            case namespace = "Namespace"
            case cosBucketRegion = "CosBucketRegion"
            case installDependency = "InstallDependency"
            case envId = "EnvId"
            case publish = "Publish"
            case code = "Code"
            case codeSource = "CodeSource"
        }
    }
    
    /// UpdateFunctionCode返回参数结构体
    public struct UpdateFunctionCodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 更新函数代码
    ///
    /// 该接口根据传入参数更新函数代码。
    @inlinable
    public func updateFunctionCode(_ input: UpdateFunctionCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateFunctionCodeResponse > {
        self.client.execute(action: "UpdateFunctionCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新函数代码
    ///
    /// 该接口根据传入参数更新函数代码。
    @inlinable
    public func updateFunctionCode(_ input: UpdateFunctionCodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFunctionCodeResponse {
        try await self.client.execute(action: "UpdateFunctionCode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
