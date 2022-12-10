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

extension TCAaiError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case errorConfigure = "InternalError.ErrorConfigure"
            case errorCreateLog = "InternalError.ErrorCreateLog"
            case errorDownFile = "InternalError.ErrorDownFile"
            case errorFailNewprequest = "InternalError.ErrorFailNewprequest"
            case errorFailWritetodb = "InternalError.ErrorFailWritetodb"
            case errorFileCannotopen = "InternalError.ErrorFileCannotopen"
            case errorGetRoute = "InternalError.ErrorGetRoute"
            case errorMakeLogpath = "InternalError.ErrorMakeLogpath"
            case errorRecognize = "InternalError.ErrorRecognize"
            case errorTranslate = "InternalError.ErrorTranslate"
            case exceedMaxLimit = "InternalError.ExceedMaxLimit"
            case textConvertFailed = "InternalError.TextConvertFailed"
            case other = "InternalError"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 初始化配置失败。
        public static var errorConfigure: InternalError {
            InternalError(.errorConfigure)
        }
        
        /// 创建日志失败。
        public static var errorCreateLog: InternalError {
            InternalError(.errorCreateLog)
        }
        
        /// 下载音频文件失败。
        public static var errorDownFile: InternalError {
            InternalError(.errorDownFile)
        }
        
        /// 新建数组失败。
        public static var errorFailNewprequest: InternalError {
            InternalError(.errorFailNewprequest)
        }
        
        /// 写入数据库失败。
        public static var errorFailWritetodb: InternalError {
            InternalError(.errorFailWritetodb)
        }
        
        /// 文件无法打开。
        public static var errorFileCannotopen: InternalError {
            InternalError(.errorFileCannotopen)
        }
        
        /// 获取路由失败。
        public static var errorGetRoute: InternalError {
            InternalError(.errorGetRoute)
        }
        
        /// 创建日志路径失败。
        public static var errorMakeLogpath: InternalError {
            InternalError(.errorMakeLogpath)
        }
        
        /// 识别失败。
        public static var errorRecognize: InternalError {
            InternalError(.errorRecognize)
        }
        
        /// 机器翻译失败。
        public static var errorTranslate: InternalError {
            InternalError(.errorTranslate)
        }
        
        /// 超过最大限流。
        public static var exceedMaxLimit: InternalError {
            InternalError(.exceedMaxLimit)
        }
        
        /// 文本转换失败，请检查文本格式。
        public static var textConvertFailed: InternalError {
            InternalError(.textConvertFailed)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
    }
}

extension TCAaiError.InternalError: Equatable {
    public static func == (lhs: TCAaiError.InternalError, rhs: TCAaiError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAaiError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAaiError.InternalError {
    /// - Returns: ``TCAaiError`` that holds the same error and context.
    public func toAaiError() -> TCAaiError {
        guard let code = TCAaiError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCAaiError(code, context: self.context)
    }
}

extension TCAaiError.InternalError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
