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

extension Dlc {
    /// 创建sql脚本
    ///
    /// 该接口（CreateScript）用于创建sql脚本。
    @inlinable
    public func createScript(_ input: CreateScriptRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateScriptResponse > {
        self.client.execute(action: "CreateScript", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建sql脚本
    ///
    /// 该接口（CreateScript）用于创建sql脚本。
    @inlinable
    public func createScript(_ input: CreateScriptRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScriptResponse {
        try await self.client.execute(action: "CreateScript", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateScript请求参数结构体
    public struct CreateScriptRequest: TCRequestModel {
        /// 脚本名称，最大不能超过255个字符。
        public let scriptName: String
        
        /// base64编码后的sql语句
        public let sqlStatement: String
        
        /// 脚本描述， 不能超过50个字符
        public let scriptDesc: String?
        
        /// 数据库名称
        public let databaseName: String?
        
        public init (scriptName: String, sqlStatement: String, scriptDesc: String?, databaseName: String?) {
            self.scriptName = scriptName
            self.sqlStatement = sqlStatement
            self.scriptDesc = scriptDesc
            self.databaseName = databaseName
        }
        
        enum CodingKeys: String, CodingKey {
            case scriptName = "ScriptName"
            case sqlStatement = "SQLStatement"
            case scriptDesc = "ScriptDesc"
            case databaseName = "DatabaseName"
        }
    }
    
    /// CreateScript返回参数结构体
    public struct CreateScriptResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}