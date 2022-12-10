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

extension TCAsrError {
    public struct InvalidParameterValue: TCErrorType {
        enum Code: String {
            case errorInvalidAppid = "InvalidParameterValue.ErrorInvalidAppid"
            case errorInvalidClientip = "InvalidParameterValue.ErrorInvalidClientip"
            case errorInvalidEngservice = "InvalidParameterValue.ErrorInvalidEngservice"
            case errorInvalidProjectid = "InvalidParameterValue.ErrorInvalidProjectid"
            case errorInvalidRequestid = "InvalidParameterValue.ErrorInvalidRequestid"
            case errorInvalidSourcetype = "InvalidParameterValue.ErrorInvalidSourcetype"
            case errorInvalidSubservicetype = "InvalidParameterValue.ErrorInvalidSubservicetype"
            case errorInvalidUrl = "InvalidParameterValue.ErrorInvalidUrl"
            case errorInvalidUseraudiokey = "InvalidParameterValue.ErrorInvalidUseraudiokey"
            case errorInvalidVoiceFormat = "InvalidParameterValue.ErrorInvalidVoiceFormat"
            case errorInvalidVoicedata = "InvalidParameterValue.ErrorInvalidVoicedata"
            case errorVoicedataTooLong = "InvalidParameterValue.ErrorVoicedataTooLong"
            case invalidParameterLength = "InvalidParameterValue.InvalidParameterLength"
            case invalidVocabId = "InvalidParameterValue.InvalidVocabId"
            case invalidVocabState = "InvalidParameterValue.InvalidVocabState"
            case invalidWordWeight = "InvalidParameterValue.InvalidWordWeight"
            case invalidWordWeightStr = "InvalidParameterValue.InvalidWordWeightStr"
            case modelId = "InvalidParameterValue.ModelId"
            case toState = "InvalidParameterValue.ToState"
            case other = "InvalidParameterValue"
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
        
        /// AppId无效。
        public static var errorInvalidAppid: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidAppid)
        }
        
        /// ClientIp无效。
        public static var errorInvalidClientip: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidClientip)
        }
        
        /// EngSerViceType无效。
        public static var errorInvalidEngservice: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidEngservice)
        }
        
        /// ProjectId无效。
        public static var errorInvalidProjectid: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidProjectid)
        }
        
        /// RequestId无效。
        public static var errorInvalidRequestid: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidRequestid)
        }
        
        /// SourceType无效。
        public static var errorInvalidSourcetype: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidSourcetype)
        }
        
        /// SubserviceType无效。
        public static var errorInvalidSubservicetype: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidSubservicetype)
        }
        
        /// Url无效。
        public static var errorInvalidUrl: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidUrl)
        }
        
        /// UsrAudioKey无效。
        public static var errorInvalidUseraudiokey: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidUseraudiokey)
        }
        
        /// 音频编码格式不支持。
        public static var errorInvalidVoiceFormat: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidVoiceFormat)
        }
        
        /// 音频数据无效。
        public static var errorInvalidVoicedata: InvalidParameterValue {
            InvalidParameterValue(.errorInvalidVoicedata)
        }
        
        /// 音频时长超过限制。
        public static var errorVoicedataTooLong: InvalidParameterValue {
            InvalidParameterValue(.errorVoicedataTooLong)
        }
        
        /// 非法的参数长度。
        public static var invalidParameterLength: InvalidParameterValue {
            InvalidParameterValue(.invalidParameterLength)
        }
        
        /// 非法的VocabId。
        public static var invalidVocabId: InvalidParameterValue {
            InvalidParameterValue(.invalidVocabId)
        }
        
        /// 非法的词表状态。
        public static var invalidVocabState: InvalidParameterValue {
            InvalidParameterValue(.invalidVocabState)
        }
        
        /// 词权重不合法。
        public static var invalidWordWeight: InvalidParameterValue {
            InvalidParameterValue(.invalidWordWeight)
        }
        
        /// 非法的WordWeightStr。
        public static var invalidWordWeightStr: InvalidParameterValue {
            InvalidParameterValue(.invalidWordWeightStr)
        }
        
        /// 模型不存在。
        public static var modelId: InvalidParameterValue {
            InvalidParameterValue(.modelId)
        }
        
        /// 非法的模型状态。
        public static var toState: InvalidParameterValue {
            InvalidParameterValue(.toState)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
    }
}

extension TCAsrError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCAsrError.InvalidParameterValue, rhs: TCAsrError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAsrError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAsrError.InvalidParameterValue {
    /// - Returns: ``TCAsrError`` that holds the same error and context.
    public func toAsrError() -> TCAsrError {
        guard let code = TCAsrError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCAsrError(code, context: self.context)
    }
}

extension TCAsrError.InvalidParameterValue {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
