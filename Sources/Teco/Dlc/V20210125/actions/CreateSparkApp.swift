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

extension Dlc {
    /// CreateSparkApp请求参数结构体
    public struct CreateSparkAppRequest: TCRequestModel {
        /// spark应用名
        public let appName: String

        /// 1代表spark jar应用，2代表spark streaming应用
        public let appType: Int64

        /// 执行spark作业的数据引擎
        public let dataEngine: String

        /// spark应用的执行入口
        public let appFile: String

        /// 执行spark作业的角色ID
        public let roleArn: Int64

        /// spark作业driver资源规格大小, 可取small,medium,large,xlarge
        public let appDriverSize: String

        /// spark作业executor资源规格大小, 可取small,medium,large,xlarge
        public let appExecutorSize: String

        /// spark作业executor个数
        public let appExecutorNums: Int64

        /// 该字段已下线，请使用字段Datasource
        public let eni: String?

        /// 是否本地上传，可去cos,lakefs
        public let isLocal: String?

        /// spark jar作业时的主类
        public let mainClass: String?

        /// spark配置，以换行符分隔
        public let appConf: String?

        /// 是否本地上传，包含cos,lakefs
        public let isLocalJars: String?

        /// spark jar作业依赖jars，以逗号分隔
        public let appJars: String?

        /// 是否本地上传，包含cos,lakefs
        public let isLocalFiles: String?

        /// spark作业依赖资源，以逗号分隔
        public let appFiles: String?

        /// spark作业命令行参数
        public let cmdArgs: String?

        /// 只对spark流任务生效
        public let maxRetries: Int64?

        /// 数据源名
        public let dataSource: String?

        /// pyspark：依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        public let isLocalPythonFiles: String?

        /// pyspark：python依赖, 除py文件外，还支持zip/egg等归档格式，多文件以逗号分隔
        public let appPythonFiles: String?

        /// archives：依赖上传方式，1、cos；2、lakefs（控制台使用，该方式不支持直接接口调用）
        public let isLocalArchives: String?

        /// archives：依赖资源
        public let appArchives: String?

        public init(appName: String, appType: Int64, dataEngine: String, appFile: String, roleArn: Int64, appDriverSize: String, appExecutorSize: String, appExecutorNums: Int64, eni: String? = nil, isLocal: String? = nil, mainClass: String? = nil, appConf: String? = nil, isLocalJars: String? = nil, appJars: String? = nil, isLocalFiles: String? = nil, appFiles: String? = nil, cmdArgs: String? = nil, maxRetries: Int64? = nil, dataSource: String? = nil, isLocalPythonFiles: String? = nil, appPythonFiles: String? = nil, isLocalArchives: String? = nil, appArchives: String? = nil) {
            self.appName = appName
            self.appType = appType
            self.dataEngine = dataEngine
            self.appFile = appFile
            self.roleArn = roleArn
            self.appDriverSize = appDriverSize
            self.appExecutorSize = appExecutorSize
            self.appExecutorNums = appExecutorNums
            self.eni = eni
            self.isLocal = isLocal
            self.mainClass = mainClass
            self.appConf = appConf
            self.isLocalJars = isLocalJars
            self.appJars = appJars
            self.isLocalFiles = isLocalFiles
            self.appFiles = appFiles
            self.cmdArgs = cmdArgs
            self.maxRetries = maxRetries
            self.dataSource = dataSource
            self.isLocalPythonFiles = isLocalPythonFiles
            self.appPythonFiles = appPythonFiles
            self.isLocalArchives = isLocalArchives
            self.appArchives = appArchives
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case appType = "AppType"
            case dataEngine = "DataEngine"
            case appFile = "AppFile"
            case roleArn = "RoleArn"
            case appDriverSize = "AppDriverSize"
            case appExecutorSize = "AppExecutorSize"
            case appExecutorNums = "AppExecutorNums"
            case eni = "Eni"
            case isLocal = "IsLocal"
            case mainClass = "MainClass"
            case appConf = "AppConf"
            case isLocalJars = "IsLocalJars"
            case appJars = "AppJars"
            case isLocalFiles = "IsLocalFiles"
            case appFiles = "AppFiles"
            case cmdArgs = "CmdArgs"
            case maxRetries = "MaxRetries"
            case dataSource = "DataSource"
            case isLocalPythonFiles = "IsLocalPythonFiles"
            case appPythonFiles = "AppPythonFiles"
            case isLocalArchives = "IsLocalArchives"
            case appArchives = "AppArchives"
        }
    }

    /// CreateSparkApp返回参数结构体
    public struct CreateSparkAppResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建spark应用
    @inlinable
    public func createSparkApp(_ input: CreateSparkAppRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSparkAppResponse > {
        self.client.execute(action: "CreateSparkApp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建spark应用
    @inlinable
    public func createSparkApp(_ input: CreateSparkAppRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSparkAppResponse {
        try await self.client.execute(action: "CreateSparkApp", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建spark应用
    @inlinable
    public func createSparkApp(appName: String, appType: Int64, dataEngine: String, appFile: String, roleArn: Int64, appDriverSize: String, appExecutorSize: String, appExecutorNums: Int64, eni: String? = nil, isLocal: String? = nil, mainClass: String? = nil, appConf: String? = nil, isLocalJars: String? = nil, appJars: String? = nil, isLocalFiles: String? = nil, appFiles: String? = nil, cmdArgs: String? = nil, maxRetries: Int64? = nil, dataSource: String? = nil, isLocalPythonFiles: String? = nil, appPythonFiles: String? = nil, isLocalArchives: String? = nil, appArchives: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateSparkAppResponse > {
        self.createSparkApp(CreateSparkAppRequest(appName: appName, appType: appType, dataEngine: dataEngine, appFile: appFile, roleArn: roleArn, appDriverSize: appDriverSize, appExecutorSize: appExecutorSize, appExecutorNums: appExecutorNums, eni: eni, isLocal: isLocal, mainClass: mainClass, appConf: appConf, isLocalJars: isLocalJars, appJars: appJars, isLocalFiles: isLocalFiles, appFiles: appFiles, cmdArgs: cmdArgs, maxRetries: maxRetries, dataSource: dataSource, isLocalPythonFiles: isLocalPythonFiles, appPythonFiles: appPythonFiles, isLocalArchives: isLocalArchives, appArchives: appArchives), logger: logger, on: eventLoop)
    }

    /// 创建spark应用
    @inlinable
    public func createSparkApp(appName: String, appType: Int64, dataEngine: String, appFile: String, roleArn: Int64, appDriverSize: String, appExecutorSize: String, appExecutorNums: Int64, eni: String? = nil, isLocal: String? = nil, mainClass: String? = nil, appConf: String? = nil, isLocalJars: String? = nil, appJars: String? = nil, isLocalFiles: String? = nil, appFiles: String? = nil, cmdArgs: String? = nil, maxRetries: Int64? = nil, dataSource: String? = nil, isLocalPythonFiles: String? = nil, appPythonFiles: String? = nil, isLocalArchives: String? = nil, appArchives: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSparkAppResponse {
        try await self.createSparkApp(CreateSparkAppRequest(appName: appName, appType: appType, dataEngine: dataEngine, appFile: appFile, roleArn: roleArn, appDriverSize: appDriverSize, appExecutorSize: appExecutorSize, appExecutorNums: appExecutorNums, eni: eni, isLocal: isLocal, mainClass: mainClass, appConf: appConf, isLocalJars: isLocalJars, appJars: appJars, isLocalFiles: isLocalFiles, appFiles: appFiles, cmdArgs: cmdArgs, maxRetries: maxRetries, dataSource: dataSource, isLocalPythonFiles: isLocalPythonFiles, appPythonFiles: appPythonFiles, isLocalArchives: isLocalArchives, appArchives: appArchives), logger: logger, on: eventLoop)
    }
}
